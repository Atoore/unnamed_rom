.class public Lcom/android/mms/dom/smil/SmilPlayer;
.super Ljava/lang/Object;
.source "SmilPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;,
        Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;,
        Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;
    }
.end annotation


# static fields
.field private static sPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

.field private static final sTimelineEntryComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAction:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

.field private mActiveElements:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/w3c/dom/smil/ElementTime;",
            ">;"
        }
    .end annotation
.end field

.field private mAllEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentElement:I

.field private mCurrentSlide:I

.field private mCurrentTime:J

.field private mMediaTimeUpdatedEvent:Lorg/w3c/dom/events/Event;

.field private mPlayerThread:Ljava/lang/Thread;

.field private mRoot:Lorg/w3c/dom/smil/ElementTime;

.field private mState:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    new-instance v0, Lcom/android/mms/dom/smil/SmilPlayer$1;

    invoke-direct {v0}, Lcom/android/mms/dom/smil/SmilPlayer$1;-><init>()V

    sput-object v0, Lcom/android/mms/dom/smil/SmilPlayer;->sTimelineEntryComparator:Ljava/util/Comparator;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    sget-object v0, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;->INITIALIZED:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;

    iput-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mState:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;

    .line 85
    sget-object v0, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;->NO_ACTIVE_ACTION:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    iput-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mAction:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    .line 248
    return-void
.end method

.method private declared-synchronized actionEntry(Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;)V
    .locals 2
    .parameter "entry"

    .prologue
    .line 541
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;->getAction()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 559
    :goto_0
    monitor-exit p0

    return-void

    .line 546
    :pswitch_0
    :try_start_1
    invoke-virtual {p1}, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;->getElement()Lorg/w3c/dom/smil/ElementTime;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/smil/ElementTime;->beginElement()Z

    .line 547
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mActiveElements:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;->getElement()Lorg/w3c/dom/smil/ElementTime;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 541
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 553
    :pswitch_1
    :try_start_2
    invoke-virtual {p1}, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;->getElement()Lorg/w3c/dom/smil/ElementTime;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/smil/ElementTime;->endElement()Z

    .line 554
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mActiveElements:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;->getElement()Lorg/w3c/dom/smil/ElementTime;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 541
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private declared-synchronized actionNext()Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;
    .locals 1

    .prologue
    .line 638
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->stopCurrentSlide()V

    .line 639
    invoke-direct {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->loadNextSlide()Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 638
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized actionPause()V
    .locals 1

    .prologue
    .line 648
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->pauseActiveElements()V

    .line 649
    sget-object v0, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;->PAUSED:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;

    iput-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mState:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;

    .line 650
    sget-object v0, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;->NO_ACTIVE_ACTION:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    iput-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mAction:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 651
    monitor-exit p0

    return-void

    .line 648
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized actionPrev()Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;
    .locals 1

    .prologue
    .line 643
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->stopCurrentSlide()V

    .line 644
    invoke-direct {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->loadPrevSlide()Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 643
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized actionReload()V
    .locals 1

    .prologue
    .line 663
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->reloadActiveSlide()V

    .line 664
    sget-object v0, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;->NO_ACTIVE_ACTION:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    iput-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mAction:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 665
    monitor-exit p0

    return-void

    .line 663
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized actionStop()V
    .locals 2

    .prologue
    .line 654
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->endActiveElements()V

    .line 655
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentTime:J

    .line 656
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentElement:I

    .line 657
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentSlide:I

    .line 658
    sget-object v0, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;->STOPPED:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;

    iput-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mState:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;

    .line 659
    sget-object v0, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;->NO_ACTIVE_ACTION:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    iput-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mAction:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 660
    monitor-exit p0

    return-void

    .line 654
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized beginSmilDocument()V
    .locals 3

    .prologue
    .line 415
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mAllEntries:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;

    .line 416
    .local v0, entry:Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;
    invoke-direct {p0, v0}, Lcom/android/mms/dom/smil/SmilPlayer;->actionEntry(Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 417
    monitor-exit p0

    return-void

    .line 415
    .end local v0           #entry:Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized endActiveElements()V
    .locals 4

    .prologue
    .line 490
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mActiveElements:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int v1, v2, v3

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_0

    .line 491
    iget-object v2, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mActiveElements:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/smil/ElementTime;

    .line 497
    .local v0, element:Lorg/w3c/dom/smil/ElementTime;
    invoke-interface {v0}, Lorg/w3c/dom/smil/ElementTime;->endElement()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 490
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 499
    .end local v0           #element:Lorg/w3c/dom/smil/ElementTime;
    :cond_0
    monitor-exit p0

    return-void

    .line 490
    .end local v1           #i:I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private declared-synchronized getOffsetTime(Lorg/w3c/dom/smil/ElementTime;)D
    .locals 7
    .parameter "element"

    .prologue
    .line 420
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mAllEntries:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 421
    .local v1, entrySize:I
    iget v2, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentSlide:I

    .local v2, i:I
    :goto_0
    iget v3, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentElement:I

    if-ge v2, v3, :cond_1

    if-ge v2, v1, :cond_1

    .line 422
    iget-object v3, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mAllEntries:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;

    .line 423
    .local v0, entry:Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;
    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;->getElement()Lorg/w3c/dom/smil/ElementTime;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 424
    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;->getOffsetTime()D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v3

    const-wide v5, 0x408f400000000000L

    mul-double/2addr v3, v5

    .line 427
    .end local v0           #entry:Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;
    :goto_1
    monitor-exit p0

    return-wide v3

    .line 421
    .restart local v0       #entry:Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 427
    .end local v0           #entry:Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;
    :cond_1
    const-wide/high16 v3, -0x4010

    goto :goto_1

    .line 420
    .end local v1           #entrySize:I
    .end local v2           #i:I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private static getParTimeline(Lorg/w3c/dom/smil/ElementParallelTimeContainer;DD)Ljava/util/ArrayList;
    .locals 7
    .parameter "par"
    .parameter "offset"
    .parameter "maxOffset"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/smil/ElementParallelTimeContainer;",
            "DD)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 93
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 96
    .local v6, timeline:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;>;"
    invoke-interface {p0}, Lorg/w3c/dom/smil/ElementParallelTimeContainer;->getBegin()Lorg/w3c/dom/smil/TimeList;

    move-result-object v0

    .line 101
    .local v0, myBeginList:Lorg/w3c/dom/smil/TimeList;
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/w3c/dom/smil/TimeList;->item(I)Lorg/w3c/dom/smil/Time;

    move-result-object v0

    .line 102
    .local v0, begin:Lorg/w3c/dom/smil/Time;
    invoke-interface {v0}, Lorg/w3c/dom/smil/Time;->getResolvedOffset()D

    move-result-wide v0

    .end local v0           #begin:Lorg/w3c/dom/smil/Time;
    add-double/2addr v0, p1

    .line 103
    .local v0, beginOffset:D
    cmpl-double v2, v0, p3

    if-lez v2, :cond_0

    move-object p0, v6

    .line 143
    .end local v0           #beginOffset:D
    .end local v6           #timeline:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;>;"
    .end local p1
    .local p0, timeline:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;>;"
    :goto_0
    return-object p0

    .line 107
    .restart local v0       #beginOffset:D
    .restart local v6       #timeline:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;>;"
    .local p0, par:Lorg/w3c/dom/smil/ElementParallelTimeContainer;
    .restart local p1
    :cond_0
    new-instance v2, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, p0, v3}, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;-><init>(DLorg/w3c/dom/smil/ElementTime;I)V

    .line 108
    .local v2, myBegin:Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    invoke-interface {p0}, Lorg/w3c/dom/smil/ElementParallelTimeContainer;->getEnd()Lorg/w3c/dom/smil/TimeList;

    move-result-object v0

    .line 115
    .local v0, myEndList:Lorg/w3c/dom/smil/TimeList;
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/w3c/dom/smil/TimeList;->item(I)Lorg/w3c/dom/smil/Time;

    move-result-object v0

    .line 116
    .local v0, end:Lorg/w3c/dom/smil/Time;
    invoke-interface {v0}, Lorg/w3c/dom/smil/Time;->getResolvedOffset()D

    move-result-wide v0

    .end local v0           #end:Lorg/w3c/dom/smil/Time;
    add-double/2addr v0, p1

    .line 117
    .local v0, endOffset:D
    cmpl-double v2, v0, p3

    if-lez v2, :cond_3

    .line 118
    .end local v2           #myBegin:Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;
    move-wide p3, p3

    .end local v0           #endOffset:D
    .local p3, endOffset:D
    move-wide v2, p3

    .line 120
    .end local p3           #endOffset:D
    .local v2, endOffset:D
    :goto_1
    new-instance v5, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;

    const/4 p3, 0x1

    invoke-direct {v5, v2, v3, p0, p3}, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;-><init>(DLorg/w3c/dom/smil/ElementTime;I)V

    .line 122
    .local v5, myEnd:Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;
    move-wide p3, v2

    .line 124
    .local p3, maxOffset:D
    invoke-interface {p0}, Lorg/w3c/dom/smil/ElementParallelTimeContainer;->getTimeChildren()Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 125
    .local v1, children:Lorg/w3c/dom/NodeList;
    const/4 v0, 0x0

    .local v0, i:I
    move v4, v0

    .end local v0           #i:I
    .local v4, i:I
    :goto_2
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-ge v4, v0, :cond_1

    .line 126
    invoke-interface {v1, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/smil/ElementTime;

    .line 127
    .local v0, child:Lorg/w3c/dom/smil/ElementTime;
    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/mms/dom/smil/SmilPlayer;->getTimeline(Lorg/w3c/dom/smil/ElementTime;DD)Ljava/util/ArrayList;

    move-result-object v0

    .line 128
    .local v0, childTimeline:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;>;"
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 125
    add-int/lit8 v0, v4, 0x1

    .end local v4           #i:I
    .local v0, i:I
    move v4, v0

    .end local v0           #i:I
    .restart local v4       #i:I
    goto :goto_2

    .line 131
    :cond_1
    sget-object v0, Lcom/android/mms/dom/smil/SmilPlayer;->sTimelineEntryComparator:Ljava/util/Comparator;

    invoke-static {v6, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 134
    sub-double p1, v2, p1

    double-to-float p1, p1

    const/high16 p2, 0x447a

    mul-float/2addr p1, p2

    invoke-interface {p0, p1}, Lorg/w3c/dom/smil/ElementParallelTimeContainer;->getActiveChildrenAt(F)Lorg/w3c/dom/NodeList;

    .end local p1
    move-result-object p0

    .line 135
    .local p0, activeChildrenAtEnd:Lorg/w3c/dom/NodeList;
    const/4 p1, 0x0

    .end local v1           #children:Lorg/w3c/dom/NodeList;
    .end local v4           #i:I
    .local p1, i:I
    :goto_3
    invoke-interface {p0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result p2

    if-ge p1, p2, :cond_2

    .line 136
    new-instance v0, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;

    invoke-interface {p0, p1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p2

    check-cast p2, Lorg/w3c/dom/smil/ElementTime;

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, p2, v1}, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;-><init>(DLorg/w3c/dom/smil/ElementTime;I)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    .line 141
    :cond_2
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object p0, v6

    .line 143
    .end local v6           #timeline:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;>;"
    .local p0, timeline:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;>;"
    goto :goto_0

    .end local v2           #endOffset:D
    .end local v5           #myEnd:Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;
    .local v0, endOffset:D
    .restart local v6       #timeline:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;>;"
    .local p0, par:Lorg/w3c/dom/smil/ElementParallelTimeContainer;
    .local p1, offset:D
    :cond_3
    move-wide v2, v0

    .end local v0           #endOffset:D
    .restart local v2       #endOffset:D
    goto :goto_1
.end method

.method public static getPlayer()Lcom/android/mms/dom/smil/SmilPlayer;
    .locals 1

    .prologue
    .line 251
    sget-object v0, Lcom/android/mms/dom/smil/SmilPlayer;->sPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    if-nez v0, :cond_0

    .line 252
    new-instance v0, Lcom/android/mms/dom/smil/SmilPlayer;

    invoke-direct {v0}, Lcom/android/mms/dom/smil/SmilPlayer;-><init>()V

    sput-object v0, Lcom/android/mms/dom/smil/SmilPlayer;->sPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    .line 254
    :cond_0
    sget-object v0, Lcom/android/mms/dom/smil/SmilPlayer;->sPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    return-object v0
.end method

.method private static getSeqTimeline(Lorg/w3c/dom/smil/ElementSequentialTimeContainer;DD)Ljava/util/ArrayList;
    .locals 9
    .parameter "seq"
    .parameter "offset"
    .parameter "maxOffset"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/smil/ElementSequentialTimeContainer;",
            "DD)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 148
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 149
    .local v8, timeline:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;>;"
    move-wide v6, p1

    .line 152
    .local v6, orgOffset:D
    invoke-interface {p0}, Lorg/w3c/dom/smil/ElementSequentialTimeContainer;->getBegin()Lorg/w3c/dom/smil/TimeList;

    move-result-object v0

    .line 157
    .local v0, myBeginList:Lorg/w3c/dom/smil/TimeList;
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/w3c/dom/smil/TimeList;->item(I)Lorg/w3c/dom/smil/Time;

    move-result-object v0

    .line 158
    .local v0, begin:Lorg/w3c/dom/smil/Time;
    invoke-interface {v0}, Lorg/w3c/dom/smil/Time;->getResolvedOffset()D

    move-result-wide v0

    .end local v0           #begin:Lorg/w3c/dom/smil/Time;
    add-double/2addr v0, p1

    .line 159
    .local v0, beginOffset:D
    cmpl-double v2, v0, p3

    if-lez v2, :cond_0

    move-object p0, v8

    .line 201
    .end local v0           #beginOffset:D
    .end local v6           #orgOffset:D
    .end local v8           #timeline:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;>;"
    .local p0, timeline:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;>;"
    :goto_0
    return-object p0

    .line 163
    .restart local v0       #beginOffset:D
    .restart local v6       #orgOffset:D
    .restart local v8       #timeline:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;>;"
    .local p0, seq:Lorg/w3c/dom/smil/ElementSequentialTimeContainer;
    :cond_0
    new-instance v2, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, p0, v3}, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;-><init>(DLorg/w3c/dom/smil/ElementTime;I)V

    .line 164
    .local v2, myBegin:Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    invoke-interface {p0}, Lorg/w3c/dom/smil/ElementSequentialTimeContainer;->getEnd()Lorg/w3c/dom/smil/TimeList;

    move-result-object v0

    .line 171
    .local v0, myEndList:Lorg/w3c/dom/smil/TimeList;
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/w3c/dom/smil/TimeList;->item(I)Lorg/w3c/dom/smil/Time;

    move-result-object v0

    .line 172
    .local v0, end:Lorg/w3c/dom/smil/Time;
    invoke-interface {v0}, Lorg/w3c/dom/smil/Time;->getResolvedOffset()D

    move-result-wide v0

    .end local v0           #end:Lorg/w3c/dom/smil/Time;
    add-double/2addr v0, p1

    .line 173
    .local v0, endOffset:D
    cmpl-double v2, v0, p3

    if-lez v2, :cond_3

    .line 174
    .end local v2           #myBegin:Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;
    move-wide p3, p3

    .end local v0           #endOffset:D
    .local p3, endOffset:D
    move-wide v2, p3

    .line 176
    .end local p3           #endOffset:D
    .local v2, endOffset:D
    :goto_1
    new-instance v5, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;

    const/4 p3, 0x1

    invoke-direct {v5, v2, v3, p0, p3}, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;-><init>(DLorg/w3c/dom/smil/ElementTime;I)V

    .line 178
    .local v5, myEnd:Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;
    move-wide p3, v2

    .line 181
    .local p3, maxOffset:D
    invoke-interface {p0}, Lorg/w3c/dom/smil/ElementSequentialTimeContainer;->getTimeChildren()Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 182
    .local v1, children:Lorg/w3c/dom/NodeList;
    const/4 v0, 0x0

    .local v0, i:I
    move v4, v0

    .end local v0           #i:I
    .local v4, i:I
    :goto_2
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-ge v4, v0, :cond_1

    .line 183
    invoke-interface {v1, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/smil/ElementTime;

    .line 184
    .local v0, child:Lorg/w3c/dom/smil/ElementTime;
    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/mms/dom/smil/SmilPlayer;->getTimeline(Lorg/w3c/dom/smil/ElementTime;DD)Ljava/util/ArrayList;

    move-result-object p1

    .line 185
    .local p1, childTimeline:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;>;"
    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 188
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 v0, 0x1

    sub-int/2addr p2, v0

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .end local v0           #child:Lorg/w3c/dom/smil/ElementTime;
    move-result-object p1

    .end local p1           #childTimeline:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;>;"
    check-cast p1, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;

    invoke-virtual {p1}, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;->getOffsetTime()D

    move-result-wide p1

    .line 182
    .local p1, offset:D
    add-int/lit8 v0, v4, 0x1

    .end local v4           #i:I
    .local v0, i:I
    move v4, v0

    .end local v0           #i:I
    .restart local v4       #i:I
    goto :goto_2

    .line 192
    :cond_1
    sub-double v0, v2, v6

    double-to-float v0, v0

    invoke-interface {p0, v0}, Lorg/w3c/dom/smil/ElementSequentialTimeContainer;->getActiveChildrenAt(F)Lorg/w3c/dom/NodeList;

    move-result-object p0

    .line 193
    .local p0, activeChildrenAtEnd:Lorg/w3c/dom/NodeList;
    const/4 v0, 0x0

    .end local v1           #children:Lorg/w3c/dom/NodeList;
    .end local v4           #i:I
    .end local v6           #orgOffset:D
    .restart local v0       #i:I
    :goto_3
    invoke-interface {p0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 194
    new-instance v4, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;

    invoke-interface {p0, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/smil/ElementTime;

    const/4 v6, 0x1

    invoke-direct {v4, v2, v3, v1, v6}, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;-><init>(DLorg/w3c/dom/smil/ElementTime;I)V

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 199
    :cond_2
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object p0, v8

    .line 201
    .end local v8           #timeline:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;>;"
    .local p0, timeline:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;>;"
    goto :goto_0

    .end local v2           #endOffset:D
    .end local v5           #myEnd:Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;
    .local v0, endOffset:D
    .restart local v6       #orgOffset:D
    .restart local v8       #timeline:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;>;"
    .local p0, seq:Lorg/w3c/dom/smil/ElementSequentialTimeContainer;
    :cond_3
    move-wide v2, v0

    .end local v0           #endOffset:D
    .restart local v2       #endOffset:D
    goto :goto_1
.end method

.method private static getTimeline(Lorg/w3c/dom/smil/ElementTime;DD)Ljava/util/ArrayList;
    .locals 7
    .parameter "element"
    .parameter "offset"
    .parameter "maxOffset"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/smil/ElementTime;",
            "DD)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 206
    instance-of v0, p0, Lorg/w3c/dom/smil/ElementParallelTimeContainer;

    if-eqz v0, :cond_0

    .line 207
    check-cast p0, Lorg/w3c/dom/smil/ElementParallelTimeContainer;

    .end local p0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/mms/dom/smil/SmilPlayer;->getParTimeline(Lorg/w3c/dom/smil/ElementParallelTimeContainer;DD)Ljava/util/ArrayList;

    move-result-object p0

    .line 242
    :goto_0
    return-object p0

    .line 208
    .restart local p0
    :cond_0
    instance-of v0, p0, Lorg/w3c/dom/smil/ElementSequentialTimeContainer;

    if-eqz v0, :cond_1

    .line 209
    check-cast p0, Lorg/w3c/dom/smil/ElementSequentialTimeContainer;

    .end local p0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/mms/dom/smil/SmilPlayer;->getSeqTimeline(Lorg/w3c/dom/smil/ElementSequentialTimeContainer;DD)Ljava/util/ArrayList;

    move-result-object p0

    goto :goto_0

    .line 212
    .restart local p0
    :cond_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 214
    .local v5, timeline:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;>;"
    invoke-interface {p0}, Lorg/w3c/dom/smil/ElementTime;->getBegin()Lorg/w3c/dom/smil/TimeList;

    move-result-object v1

    .line 215
    .local v1, beginList:Lorg/w3c/dom/smil/TimeList;
    const/4 v0, 0x0

    .local v0, i:I
    move v4, v0

    .end local v0           #i:I
    .local v4, i:I
    :goto_1
    invoke-interface {v1}, Lorg/w3c/dom/smil/TimeList;->getLength()I

    move-result v0

    if-ge v4, v0, :cond_3

    .line 216
    invoke-interface {v1, v4}, Lorg/w3c/dom/smil/TimeList;->item(I)Lorg/w3c/dom/smil/Time;

    move-result-object v0

    .line 217
    .local v0, begin:Lorg/w3c/dom/smil/Time;
    invoke-interface {v0}, Lorg/w3c/dom/smil/Time;->getResolved()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 218
    invoke-interface {v0}, Lorg/w3c/dom/smil/Time;->getResolvedOffset()D

    move-result-wide v2

    add-double/2addr v2, p1

    .line 219
    .local v2, beginOffset:D
    cmpg-double v0, v2, p3

    if-gtz v0, :cond_2

    .line 220
    .end local v0           #begin:Lorg/w3c/dom/smil/Time;
    new-instance v0, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;

    const/4 v6, 0x0

    invoke-direct {v0, v2, v3, p0, v6}, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;-><init>(DLorg/w3c/dom/smil/ElementTime;I)V

    .line 222
    .local v0, entry:Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 215
    .end local v0           #entry:Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;
    .end local v2           #beginOffset:D
    :cond_2
    add-int/lit8 v0, v4, 0x1

    .end local v4           #i:I
    .local v0, i:I
    move v4, v0

    .end local v0           #i:I
    .restart local v4       #i:I
    goto :goto_1

    .line 227
    :cond_3
    invoke-interface {p0}, Lorg/w3c/dom/smil/ElementTime;->getEnd()Lorg/w3c/dom/smil/TimeList;

    move-result-object v1

    .line 228
    .local v1, endList:Lorg/w3c/dom/smil/TimeList;
    const/4 v0, 0x0

    .end local v4           #i:I
    .restart local v0       #i:I
    move v4, v0

    .end local v0           #i:I
    .restart local v4       #i:I
    :goto_2
    invoke-interface {v1}, Lorg/w3c/dom/smil/TimeList;->getLength()I

    move-result v0

    if-ge v4, v0, :cond_5

    .line 229
    invoke-interface {v1, v4}, Lorg/w3c/dom/smil/TimeList;->item(I)Lorg/w3c/dom/smil/Time;

    move-result-object v0

    .line 230
    .local v0, end:Lorg/w3c/dom/smil/Time;
    invoke-interface {v0}, Lorg/w3c/dom/smil/Time;->getResolved()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 231
    invoke-interface {v0}, Lorg/w3c/dom/smil/Time;->getResolvedOffset()D

    move-result-wide v2

    add-double/2addr v2, p1

    .line 232
    .local v2, endOffset:D
    cmpg-double v0, v2, p3

    if-gtz v0, :cond_4

    .line 233
    .end local v0           #end:Lorg/w3c/dom/smil/Time;
    new-instance v0, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;

    const/4 v6, 0x1

    invoke-direct {v0, v2, v3, p0, v6}, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;-><init>(DLorg/w3c/dom/smil/ElementTime;I)V

    .line 235
    .local v0, entry:Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 228
    .end local v0           #entry:Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;
    .end local v2           #endOffset:D
    :cond_4
    add-int/lit8 v0, v4, 0x1

    .end local v4           #i:I
    .local v0, i:I
    move v4, v0

    .end local v0           #i:I
    .restart local v4       #i:I
    goto :goto_2

    .line 240
    :cond_5
    sget-object p0, Lcom/android/mms/dom/smil/SmilPlayer;->sTimelineEntryComparator:Ljava/util/Comparator;

    .end local p0
    invoke-static {v5, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    move-object p0, v5

    .line 242
    goto :goto_0
.end method

.method private declared-synchronized isBeginOfSlide(Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;)Z
    .locals 1
    .parameter "entry"

    .prologue
    .line 386
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;->getElement()Lorg/w3c/dom/smil/ElementTime;

    move-result-object v0

    instance-of v0, v0, Lcom/android/mms/dom/smil/SmilParElementImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized isNextAction()Z
    .locals 2

    .prologue
    .line 297
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mAction:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    sget-object v1, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;->NEXT:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized isPauseAction()Z
    .locals 2

    .prologue
    .line 281
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mAction:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    sget-object v1, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;->PAUSE:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized isPrevAction()Z
    .locals 2

    .prologue
    .line 301
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mAction:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    sget-object v1, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;->PREV:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized isReloadAction()Z
    .locals 2

    .prologue
    .line 293
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mAction:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    sget-object v1, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;->RELOAD:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized isStopAction()Z
    .locals 2

    .prologue
    .line 289
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mAction:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    sget-object v1, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;->STOP:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private loadNextSlide()Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;
    .locals 8

    .prologue
    const-wide v6, 0x408f400000000000L

    .line 594
    iget-object v4, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mAllEntries:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 595
    .local v3, totalEntries:I
    iget v2, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentElement:I

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 596
    iget-object v4, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mAllEntries:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;

    .line 597
    .local v0, entry:Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;
    invoke-direct {p0, v0}, Lcom/android/mms/dom/smil/SmilPlayer;->isBeginOfSlide(Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 598
    iput v2, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentElement:I

    .line 599
    iput v2, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentSlide:I

    .line 600
    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;->getOffsetTime()D

    move-result-wide v4

    mul-double/2addr v4, v6

    double-to-long v4, v4

    iput-wide v4, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentTime:J

    move-object v1, v0

    .line 611
    .end local v0           #entry:Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;
    .local v1, entry:Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;
    :goto_1
    return-object v1

    .line 595
    .end local v1           #entry:Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;
    .restart local v0       #entry:Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 605
    .end local v0           #entry:Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;
    :cond_1
    iget v4, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentElement:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentElement:I

    .line 606
    const/4 v0, 0x0

    .line 607
    .restart local v0       #entry:Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;
    iget v4, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentElement:I

    if-ge v4, v3, :cond_2

    .line 608
    iget-object v4, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mAllEntries:Ljava/util/ArrayList;

    iget v5, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentElement:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #entry:Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;
    check-cast v0, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;

    .line 609
    .restart local v0       #entry:Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;
    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;->getOffsetTime()D

    move-result-wide v4

    mul-double/2addr v4, v6

    double-to-long v4, v4

    iput-wide v4, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentTime:J

    :cond_2
    move-object v1, v0

    .line 611
    .end local v0           #entry:Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;
    .restart local v1       #entry:Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;
    goto :goto_1
.end method

.method private loadPrevSlide()Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;
    .locals 9

    .prologue
    .line 615
    const/4 v3, 0x1

    .line 616
    .local v3, skippedSlides:I
    const/4 v2, -0x1

    .line 617
    .local v2, latestBeginEntryIndex:I
    iget v1, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentSlide:I

    .local v1, i:I
    move v4, v3

    .end local v3           #skippedSlides:I
    .local v4, skippedSlides:I
    :goto_0
    if-ltz v1, :cond_2

    .line 618
    iget-object v5, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mAllEntries:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;

    .line 619
    .local v0, entry:Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;
    invoke-direct {p0, v0}, Lcom/android/mms/dom/smil/SmilPlayer;->isBeginOfSlide(Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 620
    move v2, v1

    .line 621
    add-int/lit8 v3, v4, -0x1

    .end local v4           #skippedSlides:I
    .restart local v3       #skippedSlides:I
    if-nez v4, :cond_1

    .line 622
    iput v1, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentElement:I

    .line 623
    iput v1, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentSlide:I

    .line 624
    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;->getOffsetTime()D

    move-result-wide v5

    const-wide v7, 0x408f400000000000L

    mul-double/2addr v5, v7

    double-to-long v5, v5

    iput-wide v5, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentTime:J

    move-object v5, v0

    .line 634
    .end local v0           #entry:Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;
    .end local p0
    :goto_1
    return-object v5

    .end local v3           #skippedSlides:I
    .restart local v0       #entry:Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;
    .restart local v4       #skippedSlides:I
    .restart local p0
    :cond_0
    move v3, v4

    .line 617
    .end local v4           #skippedSlides:I
    .restart local v3       #skippedSlides:I
    :cond_1
    add-int/lit8 v1, v1, -0x1

    move v4, v3

    .end local v3           #skippedSlides:I
    .restart local v4       #skippedSlides:I
    goto :goto_0

    .line 629
    .end local v0           #entry:Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;
    :cond_2
    const/4 v5, -0x1

    if-eq v2, v5, :cond_3

    .line 630
    iput v2, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentElement:I

    .line 631
    iput v2, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentSlide:I

    .line 632
    iget-object v5, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mAllEntries:Ljava/util/ArrayList;

    iget v6, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentElement:I

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;

    move v3, v4

    .end local v4           #skippedSlides:I
    .restart local v3       #skippedSlides:I
    move-object v5, p0

    goto :goto_1

    .line 634
    .end local v3           #skippedSlides:I
    .restart local v4       #skippedSlides:I
    .restart local p0
    :cond_3
    const/4 v5, 0x0

    move v3, v4

    .end local v4           #skippedSlides:I
    .restart local v3       #skippedSlides:I
    goto :goto_1
.end method

.method private declared-synchronized pauseActiveElements()V
    .locals 4

    .prologue
    .line 502
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mActiveElements:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int v1, v2, v3

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_0

    .line 503
    iget-object v2, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mActiveElements:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/smil/ElementTime;

    .line 509
    .local v0, element:Lorg/w3c/dom/smil/ElementTime;
    invoke-interface {v0}, Lorg/w3c/dom/smil/ElementTime;->pauseElement()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 502
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 511
    .end local v0           #element:Lorg/w3c/dom/smil/ElementTime;
    :cond_0
    monitor-exit p0

    return-void

    .line 502
    .end local v1           #i:I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private declared-synchronized reloadActiveSlide()V
    .locals 6

    .prologue
    .line 391
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mActiveElements:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 392
    invoke-direct {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->beginSmilDocument()V

    .line 397
    iget-object v4, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mAllEntries:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 398
    .local v3, totalEntries:I
    iget v4, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentSlide:I

    iget v5, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentElement:I

    if-ne v4, v5, :cond_1

    .line 399
    iget v4, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentElement:I

    if-ge v4, v3, :cond_0

    .line 400
    iget-object v4, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mAllEntries:Ljava/util/ArrayList;

    iget v5, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentElement:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;

    .line 401
    .local v0, entry:Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;
    invoke-direct {p0, v0}, Lcom/android/mms/dom/smil/SmilPlayer;->actionEntry(Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;)V

    .line 411
    .end local v0           #entry:Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->seekActiveMedia()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 412
    monitor-exit p0

    return-void

    .line 404
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mAllEntries:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 405
    .local v1, entrySize:I
    iget v2, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentSlide:I

    .local v2, i:I
    :goto_0
    iget v4, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentElement:I

    if-ge v2, v4, :cond_0

    if-ge v2, v1, :cond_0

    .line 406
    iget-object v4, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mAllEntries:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;

    .line 407
    .restart local v0       #entry:Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;
    invoke-direct {p0, v0}, Lcom/android/mms/dom/smil/SmilPlayer;->actionEntry(Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 405
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 391
    .end local v0           #entry:Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;
    .end local v1           #entrySize:I
    .end local v2           #i:I
    .end local v3           #totalEntries:I
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method private declared-synchronized reloadCurrentEntry()Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;
    .locals 3

    .prologue
    .line 563
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mAllEntries:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 564
    .local v0, allEntryCount:I
    iget v1, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentElement:I

    if-gt v0, v1, :cond_0

    .line 565
    iget-object v1, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mAllEntries:Ljava/util/ArrayList;

    const/4 v2, 0x1

    sub-int v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 567
    :goto_0
    monitor-exit p0

    return-object v1

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mAllEntries:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentElement:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 563
    .end local v0           #allEntryCount:I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized resumeActiveElements()V
    .locals 4

    .prologue
    .line 514
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mActiveElements:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 515
    .local v2, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 516
    iget-object v3, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mActiveElements:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/smil/ElementTime;

    .line 522
    .local v0, element:Lorg/w3c/dom/smil/ElementTime;
    invoke-interface {v0}, Lorg/w3c/dom/smil/ElementTime;->resumeElement()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 515
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 524
    .end local v0           #element:Lorg/w3c/dom/smil/ElementTime;
    :cond_0
    monitor-exit p0

    return-void

    .line 514
    .end local v1           #i:I
    .end local v2           #size:I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private declared-synchronized seekActiveMedia()V
    .locals 6

    .prologue
    .line 431
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mActiveElements:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int v1, v4, v5

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_0

    .line 432
    iget-object v4, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mActiveElements:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/smil/ElementTime;

    .line 433
    .local v0, element:Lorg/w3c/dom/smil/ElementTime;
    instance-of v4, v0, Lcom/android/mms/dom/smil/SmilParElementImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_1

    .line 446
    .end local v0           #element:Lorg/w3c/dom/smil/ElementTime;
    :cond_0
    monitor-exit p0

    return-void

    .line 436
    .restart local v0       #element:Lorg/w3c/dom/smil/ElementTime;
    :cond_1
    :try_start_1
    invoke-direct {p0, v0}, Lcom/android/mms/dom/smil/SmilPlayer;->getOffsetTime(Lorg/w3c/dom/smil/ElementTime;)D

    move-result-wide v2

    .line 437
    .local v2, offset:D
    const-wide/16 v4, 0x0

    cmpl-double v4, v2, v4

    if-ltz v4, :cond_2

    iget-wide v4, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentTime:J

    long-to-double v4, v4

    cmpg-double v4, v2, v4

    if-gtz v4, :cond_2

    .line 443
    iget-wide v4, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentTime:J

    long-to-double v4, v4

    sub-double/2addr v4, v2

    double-to-float v4, v4

    invoke-interface {v0, v4}, Lorg/w3c/dom/smil/ElementTime;->seekElement(F)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 431
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .end local v0           #element:Lorg/w3c/dom/smil/ElementTime;
    .end local v1           #i:I
    .end local v2           #offset:D
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method private stopCurrentSlide()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 572
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 573
    .local v3, skippedEntries:Ljava/util/HashSet;,"Ljava/util/HashSet<Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;>;"
    iget-object v5, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mAllEntries:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 574
    .local v4, totalEntries:I
    iget v2, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentElement:I

    .local v2, i:I
    :goto_0
    if-ge v2, v4, :cond_0

    .line 577
    iget-object v5, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mAllEntries:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;

    .line 578
    .local v1, entry:Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;
    invoke-virtual {v1}, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;->getAction()I

    move-result v0

    .line 579
    .local v0, action:I
    invoke-virtual {v1}, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;->getElement()Lorg/w3c/dom/smil/ElementTime;

    move-result-object v5

    instance-of v5, v5, Lcom/android/mms/dom/smil/SmilParElementImpl;

    if-eqz v5, :cond_1

    if-ne v0, v6, :cond_1

    .line 581
    invoke-direct {p0, v1}, Lcom/android/mms/dom/smil/SmilPlayer;->actionEntry(Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;)V

    .line 582
    iput v2, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentElement:I

    .line 590
    .end local v0           #action:I
    .end local v1           #entry:Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;
    :cond_0
    return-void

    .line 584
    .restart local v0       #action:I
    .restart local v1       #entry:Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;
    :cond_1
    if-ne v0, v6, :cond_3

    invoke-virtual {v3, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 585
    invoke-direct {p0, v1}, Lcom/android/mms/dom/smil/SmilPlayer;->actionEntry(Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;)V

    .line 574
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 586
    :cond_3
    if-nez v0, :cond_2

    .line 587
    invoke-virtual {v3, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private declared-synchronized waitForEntry(J)V
    .locals 10
    .parameter "interval"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const-wide/16 v8, 0xc8

    .line 453
    monitor-enter p0

    const-wide/16 v0, 0x0

    .line 455
    .local v0, overhead:J
    :goto_0
    const-wide/16 v6, 0x0

    cmp-long v6, p1, v6

    if-lez v6, :cond_0

    .line 456
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 457
    .local v4, startAt:J
    const-wide/16 v6, 0xc8

    invoke-static {p1, p2, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    .line 458
    .local v2, sleep:J
    cmp-long v6, v0, v2

    if-gez v6, :cond_1

    .line 459
    sub-long v6, v2, v0

    invoke-virtual {p0, v6, v7}, Ljava/lang/Object;->wait(J)V

    .line 460
    iget-wide v6, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentTime:J

    add-long/2addr v6, v2

    iput-wide v6, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentTime:J

    .line 466
    :goto_1
    invoke-direct {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->isStopAction()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-direct {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->isReloadAction()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-direct {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->isPauseAction()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-direct {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->isNextAction()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-direct {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->isPrevAction()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-eqz v6, :cond_2

    .line 476
    .end local v2           #sleep:J
    .end local v4           #startAt:J
    :cond_0
    monitor-exit p0

    return-void

    .line 462
    .restart local v2       #sleep:J
    .restart local v4       #startAt:J
    :cond_1
    const-wide/16 v2, 0x0

    .line 463
    :try_start_1
    iget-wide v6, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentTime:J

    add-long/2addr v6, v0

    iput-wide v6, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentTime:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 453
    .end local v2           #sleep:J
    .end local v4           #startAt:J
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 471
    .restart local v2       #sleep:J
    .restart local v4       #startAt:J
    :cond_2
    :try_start_2
    iget-object v6, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mRoot:Lorg/w3c/dom/smil/ElementTime;

    check-cast v6, Lorg/w3c/dom/events/EventTarget;

    iget-object v7, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mMediaTimeUpdatedEvent:Lorg/w3c/dom/events/Event;

    invoke-interface {v6, v7}, Lorg/w3c/dom/events/EventTarget;->dispatchEvent(Lorg/w3c/dom/events/Event;)Z

    .line 473
    sub-long/2addr p1, v8

    .line 474
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-wide v6

    sub-long/2addr v6, v4

    sub-long v0, v6, v2

    .line 475
    goto :goto_0
.end method

.method private declared-synchronized waitForWakeUp()V
    .locals 3

    .prologue
    .line 528
    monitor-enter p0

    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->isStartAction()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->isStopAction()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->isReloadAction()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->isNextAction()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->isPrevAction()Z

    move-result v1

    if-nez v1, :cond_1

    .line 529
    const-wide/16 v1, 0xc8

    invoke-virtual {p0, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 535
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 536
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_1
    const-string v1, "Mms/SmilPlayer"

    const-string v2, "Unexpected InterruptedException."

    invoke-static {v1, v2, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 538
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_0
    :goto_1
    monitor-exit p0

    return-void

    .line 531
    :cond_1
    :try_start_2
    invoke-virtual {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->isStartAction()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 532
    sget-object v1, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;->NO_ACTIVE_ACTION:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    iput-object v1, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mAction:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    .line 533
    sget-object v1, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;->PLAYING:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;

    iput-object v1, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mState:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 528
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method public declared-synchronized getCurrentPosition()I
    .locals 2

    .prologue
    .line 486
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    long-to-int v0, v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDuration()I
    .locals 3

    .prologue
    .line 479
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mAllEntries:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mAllEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 480
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mAllEntries:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mAllEntries:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;

    invoke-static {v0}, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;->access$000(Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;)D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    double-to-int v0, v0

    mul-int/lit16 v0, v0, 0x3e8

    .line 482
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 479
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized init(Lorg/w3c/dom/smil/ElementTime;)V
    .locals 5
    .parameter "root"

    .prologue
    .line 305
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mRoot:Lorg/w3c/dom/smil/ElementTime;

    .line 306
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mRoot:Lorg/w3c/dom/smil/ElementTime;

    const-wide/16 v1, 0x0

    const-wide/high16 v3, 0x43e0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/mms/dom/smil/SmilPlayer;->getTimeline(Lorg/w3c/dom/smil/ElementTime;DD)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mAllEntries:Ljava/util/ArrayList;

    .line 307
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mRoot:Lorg/w3c/dom/smil/ElementTime;

    check-cast v0, Lorg/w3c/dom/events/DocumentEvent;

    const-string v1, "Event"

    invoke-interface {v0, v1}, Lorg/w3c/dom/events/DocumentEvent;->createEvent(Ljava/lang/String;)Lorg/w3c/dom/events/Event;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mMediaTimeUpdatedEvent:Lorg/w3c/dom/events/Event;

    .line 308
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mMediaTimeUpdatedEvent:Lorg/w3c/dom/events/Event;

    const-string v1, "mediaTimeUpdated"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lorg/w3c/dom/events/Event;->initEvent(Ljava/lang/String;ZZ)V

    .line 309
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mActiveElements:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 310
    monitor-exit p0

    return-void

    .line 305
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isPausedState()Z
    .locals 2

    .prologue
    .line 273
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mState:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;

    sget-object v1, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;->PAUSED:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isPlayedState()Z
    .locals 2

    .prologue
    .line 269
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mState:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;

    sget-object v1, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;->PLAYED:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isPlayingState()Z
    .locals 2

    .prologue
    .line 265
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mState:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;

    sget-object v1, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;->PLAYING:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isStartAction()Z
    .locals 2

    .prologue
    .line 285
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mAction:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    sget-object v1, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;->START:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isStoppedState()Z
    .locals 2

    .prologue
    .line 277
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mState:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;

    sget-object v1, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;->STOPPED:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized next()V
    .locals 1

    .prologue
    .line 372
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->isPlayingState()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->isPausedState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 373
    :cond_0
    sget-object v0, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;->NEXT:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    iput-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mAction:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    .line 374
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 376
    :cond_1
    monitor-exit p0

    return-void

    .line 372
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized pause()V
    .locals 2

    .prologue
    .line 328
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->isPlayingState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 329
    sget-object v0, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;->PAUSE:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    iput-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mAction:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    .line 330
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 331
    sget-object v0, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;->PAUSED:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;

    iput-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mState:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 335
    :goto_0
    monitor-exit p0

    return-void

    .line 333
    :cond_0
    :try_start_1
    const-string v0, "Mms/SmilPlayer"

    const-string v1, "Error State: Playback is not playing!"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 328
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized play()V
    .locals 2

    .prologue
    const-string v0, "Mms/SmilPlayer"

    .line 313
    monitor-enter p0

    :try_start_0
    const-string v0, "Mms/SmilPlayer"

    const-string v1, "play()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    invoke-virtual {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->isPlayingState()Z

    move-result v0

    if-nez v0, :cond_0

    .line 316
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentTime:J

    .line 317
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentElement:I

    .line 318
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentSlide:I

    .line 319
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mPlayerThread:Ljava/lang/Thread;

    .line 320
    sget-object v0, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;->PLAYING:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;

    iput-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mState:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;

    .line 321
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mPlayerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 325
    :goto_0
    monitor-exit p0

    return-void

    .line 323
    :cond_0
    :try_start_1
    const-string v0, "Mms/SmilPlayer"

    const-string v1, "Error State: Playback is playing!"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 313
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized prev()V
    .locals 1

    .prologue
    .line 379
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->isPlayingState()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->isPausedState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 380
    :cond_0
    sget-object v0, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;->PREV:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    iput-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mAction:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    .line 381
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 383
    :cond_1
    monitor-exit p0

    return-void

    .line 379
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized reload()V
    .locals 1

    .prologue
    .line 363
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->isPlayingState()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->isPausedState()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 364
    :cond_0
    sget-object v0, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;->RELOAD:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    iput-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mAction:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    .line 365
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 369
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 366
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->isPlayedState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 367
    invoke-direct {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->actionReload()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 363
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 11

    .prologue
    .line 668
    invoke-virtual {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->isStoppedState()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 745
    :cond_0
    :goto_0
    return-void

    .line 675
    :cond_1
    iget-object v7, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mAllEntries:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 676
    .local v6, size:I
    const/4 v7, 0x0

    iput v7, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentElement:I

    :goto_1
    iget v7, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentElement:I

    if-ge v7, v6, :cond_f

    .line 677
    iget-object v7, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mAllEntries:Ljava/util/ArrayList;

    iget v8, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentElement:I

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;

    .line 678
    .local v1, entry:Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;
    invoke-direct {p0, v1}, Lcom/android/mms/dom/smil/SmilPlayer;->isBeginOfSlide(Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 679
    iget v7, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentElement:I

    iput v7, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentSlide:I

    .line 681
    :cond_2
    invoke-virtual {v1}, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;->getOffsetTime()D

    move-result-wide v7

    const-wide v9, 0x408f400000000000L

    mul-double/2addr v7, v9

    double-to-long v3, v7

    .line 682
    .local v3, offset:J
    :cond_3
    iget-wide v7, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentTime:J

    cmp-long v7, v3, v7

    if-lez v7, :cond_e

    .line 684
    :try_start_0
    iget-wide v7, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentTime:J

    sub-long v7, v3, v7

    invoke-direct {p0, v7, v8}, Lcom/android/mms/dom/smil/SmilPlayer;->waitForEntry(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 690
    :cond_4
    :goto_2
    invoke-direct {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->isPauseAction()Z

    move-result v7

    if-nez v7, :cond_5

    invoke-direct {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->isStopAction()Z

    move-result v7

    if-nez v7, :cond_5

    invoke-direct {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->isReloadAction()Z

    move-result v7

    if-nez v7, :cond_5

    invoke-direct {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->isNextAction()Z

    move-result v7

    if-nez v7, :cond_5

    invoke-direct {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->isPrevAction()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 691
    :cond_5
    invoke-direct {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->isPauseAction()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 692
    invoke-direct {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->actionPause()V

    .line 693
    invoke-direct {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->waitForWakeUp()V

    .line 696
    :cond_6
    invoke-direct {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->isStopAction()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 697
    invoke-direct {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->actionStop()V

    goto :goto_0

    .line 685
    :catch_0
    move-exception v7

    move-object v0, v7

    .line 686
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v7, "Mms/SmilPlayer"

    const-string v8, "Unexpected InterruptedException."

    invoke-static {v7, v8, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 701
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_7
    invoke-direct {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->isReloadAction()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 702
    invoke-direct {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->actionReload()V

    .line 703
    invoke-direct {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->reloadCurrentEntry()Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;

    move-result-object v1

    .line 704
    if-eqz v1, :cond_0

    .line 706
    invoke-virtual {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->isPausedState()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 707
    sget-object v7, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;->PAUSE:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    iput-object v7, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mAction:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    .line 711
    :cond_8
    invoke-direct {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->isNextAction()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 712
    invoke-direct {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->actionNext()Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;

    move-result-object v2

    .line 713
    .local v2, nextEntry:Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;
    if-eqz v2, :cond_9

    .line 714
    move-object v1, v2

    .line 716
    :cond_9
    iget-object v7, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mState:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;

    sget-object v8, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;->PAUSED:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;

    if-ne v7, v8, :cond_c

    .line 717
    sget-object v7, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;->PAUSE:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    iput-object v7, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mAction:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    .line 718
    invoke-direct {p0, v1}, Lcom/android/mms/dom/smil/SmilPlayer;->actionEntry(Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;)V

    .line 722
    :goto_3
    iget-wide v3, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentTime:J

    .line 725
    .end local v2           #nextEntry:Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;
    :cond_a
    invoke-direct {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->isPrevAction()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 726
    invoke-direct {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->actionPrev()Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;

    move-result-object v5

    .line 727
    .local v5, prevEntry:Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;
    if-eqz v5, :cond_b

    .line 728
    move-object v1, v5

    .line 730
    :cond_b
    iget-object v7, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mState:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;

    sget-object v8, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;->PAUSED:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;

    if-ne v7, v8, :cond_d

    .line 731
    sget-object v7, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;->PAUSE:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    iput-object v7, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mAction:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    .line 732
    invoke-direct {p0, v1}, Lcom/android/mms/dom/smil/SmilPlayer;->actionEntry(Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;)V

    .line 736
    :goto_4
    iget-wide v3, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentTime:J

    .line 737
    goto/16 :goto_2

    .line 720
    .end local v5           #prevEntry:Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;
    .restart local v2       #nextEntry:Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;
    :cond_c
    sget-object v7, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;->NO_ACTIVE_ACTION:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    iput-object v7, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mAction:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    goto :goto_3

    .line 734
    .end local v2           #nextEntry:Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;
    .restart local v5       #prevEntry:Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;
    :cond_d
    sget-object v7, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;->NO_ACTIVE_ACTION:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    iput-object v7, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mAction:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    goto :goto_4

    .line 740
    .end local v5           #prevEntry:Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;
    :cond_e
    iput-wide v3, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentTime:J

    .line 741
    invoke-direct {p0, v1}, Lcom/android/mms/dom/smil/SmilPlayer;->actionEntry(Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;)V

    .line 676
    iget v7, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentElement:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentElement:I

    goto/16 :goto_1

    .line 744
    .end local v1           #entry:Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;
    .end local v3           #offset:J
    :cond_f
    sget-object v7, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;->PLAYED:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;

    iput-object v7, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mState:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;

    goto/16 :goto_0
.end method

.method public setPlayerState(Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;)V
    .locals 0
    .parameter "state"

    .prologue
    .line 259
    iput-object p1, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mState:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;

    .line 260
    return-void
.end method

.method public declared-synchronized start()V
    .locals 2

    .prologue
    .line 338
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->isPausedState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 339
    invoke-direct {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->resumeActiveElements()V

    .line 340
    sget-object v0, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;->START:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    iput-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mAction:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    .line 341
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 347
    :goto_0
    monitor-exit p0

    return-void

    .line 342
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->isPlayedState()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->isStoppedState()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 343
    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->play()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 338
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 345
    :cond_2
    :try_start_2
    const-string v0, "Mms/SmilPlayer"

    const-string v1, "Error State: Playback can not be started!"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized stop()V
    .locals 1

    .prologue
    .line 350
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->isPlayingState()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->isPausedState()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 351
    :cond_0
    sget-object v0, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;->STOP:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    iput-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mAction:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    .line 352
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 356
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 353
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->isPlayedState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 354
    invoke-direct {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->actionStop()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 350
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
