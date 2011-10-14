.class public Lcom/android/mms/ui/ConversationComposer;
.super Landroid/app/Activity;
.source "ConversationComposer.java"


# instance fields
.field private mComposeMessage:Lcom/android/mms/ui/ComposeMessage;

.field private mConversationList:Lcom/android/mms/ui/ConversationList;

.field private mForceShowComposer:Z

.field private mIsComposerOnly:Z

.field private mIsFinish:Z

.field private mIsLandscape:Z

.field private mLeftScreen:Landroid/widget/LinearLayout;

.field private mOptionMenuCount:I

.field private mOptionSelectResult:Z

.field private mRightScreen:Landroid/widget/FrameLayout;

.field private mSplitBar:Landroid/widget/ImageButton;

.field private mSplitManager:Lcom/android/mms/ui/SplitManager;

.field private mUseMoveTaskToBack:Z

.field private mUseSplitView:Z

.field private onComposerClose:Lcom/android/mms/ui/OnEventListener;

.field private onComposerSipUp:Lcom/android/mms/ui/OnEventListener;

.field private onComposerStateChanged:Lcom/android/mms/ui/OnEventListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/ConversationComposer;->mUseMoveTaskToBack:Z

    .line 870
    new-instance v0, Lcom/android/mms/ui/ConversationComposer$2;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ConversationComposer$2;-><init>(Lcom/android/mms/ui/ConversationComposer;)V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->onComposerClose:Lcom/android/mms/ui/OnEventListener;

    .line 885
    new-instance v0, Lcom/android/mms/ui/ConversationComposer$3;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ConversationComposer$3;-><init>(Lcom/android/mms/ui/ConversationComposer;)V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->onComposerSipUp:Lcom/android/mms/ui/OnEventListener;

    .line 1000
    new-instance v0, Lcom/android/mms/ui/ConversationComposer$4;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ConversationComposer$4;-><init>(Lcom/android/mms/ui/ConversationComposer;)V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->onComposerStateChanged:Lcom/android/mms/ui/OnEventListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/ConversationComposer;)Landroid/widget/ImageButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitBar:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/ui/ConversationComposer;)Lcom/android/mms/ui/SplitManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/mms/ui/ConversationComposer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationComposer;->composerRequestsClosing()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/mms/ui/ConversationComposer;)Lcom/android/mms/ui/ConversationList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/mms/ui/ConversationComposer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationComposer;->getComposeMessageStatus()I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/mms/ui/ConversationComposer;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ConversationComposer;->showEmptyScreen(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/mms/ui/ConversationComposer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationComposer;->mIsLandscape:Z

    return v0
.end method

.method private calcSplitMode()I
    .locals 5

    .prologue
    const/4 v4, 0x1

    const-string v3, "Mms/ConversationComposer"

    .line 916
    iget-boolean v2, p0, Lcom/android/mms/ui/ConversationComposer;->mIsComposerOnly:Z

    if-ne v2, v4, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessage;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessage;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessage;->isRecipientsEditorVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v4

    .line 961
    :goto_0
    return v2

    .line 920
    :cond_0
    const/4 v1, -0x1

    .line 921
    .local v1, state:I
    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessage;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessage;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessage;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    .line 922
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationComposer;->getComposeMessageStatus()I

    move-result v1

    .line 924
    :cond_1
    const/4 v0, 0x0

    .line 925
    .local v0, splitMode:I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    .line 926
    iget-boolean v2, p0, Lcom/android/mms/ui/ConversationComposer;->mIsLandscape:Z

    if-eqz v2, :cond_2

    .line 927
    const/4 v0, 0x2

    .line 945
    :cond_2
    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 959
    const-string v2, "Mms/ConversationComposer"

    const-string v2, "calcSplitMode():unknown"

    invoke-static {v3, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    move v2, v0

    .line 961
    goto :goto_0

    .line 928
    :cond_3
    if-nez v1, :cond_4

    .line 929
    const/4 v0, 0x1

    goto :goto_1

    .line 931
    :cond_4
    sget-boolean v2, Lcom/android/mms/ui/ComposeMessage;->isSipVisible:Z

    if-ne v2, v4, :cond_5

    .line 932
    const/4 v0, 0x1

    goto :goto_1

    .line 934
    :cond_5
    iget-boolean v2, p0, Lcom/android/mms/ui/ConversationComposer;->mIsLandscape:Z

    if-eqz v2, :cond_6

    .line 935
    const/4 v0, 0x2

    goto :goto_1

    .line 940
    :cond_6
    const/4 v0, 0x1

    goto :goto_1

    .line 947
    :pswitch_0
    const-string v2, "Mms/ConversationComposer"

    const-string v2, "calcSplitMode():SPLIT_MODE_NONE"

    invoke-static {v3, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 950
    :pswitch_1
    const-string v2, "Mms/ConversationComposer"

    const-string v2, "calcSplitMode():SPLIT_MODE_LEFT_ONLY"

    invoke-static {v3, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 953
    :pswitch_2
    const-string v2, "Mms/ConversationComposer"

    const-string v2, "calcSplitMode():SPLIT_MODE_RIGHT_ONLY"

    invoke-static {v3, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 956
    :pswitch_3
    const-string v2, "Mms/ConversationComposer"

    const-string v2, "calcSplitMode():SPLIT_MODE_SPLITED"

    invoke-static {v3, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 945
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private checkRunningApp()Z
    .locals 13

    .prologue
    const-string v12, "Mms/ConversationComposer"

    .line 691
    const/4 v1, 0x0

    .line 692
    .local v1, appRunning:Z
    new-instance v7, Landroid/content/Intent;

    const-string v10, "android.intent.action.MAIN"

    const/4 v11, 0x0

    invoke-direct {v7, v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 694
    .local v7, mCheckHomeIntent:Landroid/content/Intent;
    const-string v10, "android.intent.category.HOME"

    invoke-virtual {v7, v10}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 695
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 696
    .local v8, pm:Landroid/content/pm/PackageManager;
    const/4 v10, 0x0

    invoke-virtual {v8, v7, v10}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    .line 698
    .local v6, launcherlist:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v6, :cond_0

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v10

    const/4 v11, 0x1

    if-ge v10, v11, :cond_1

    .line 700
    :cond_0
    const-string v10, "Mms/ConversationComposer"

    const-string v10, "Launcher App is nothing"

    invoke-static {v12, v10}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v1

    .line 727
    .end local v1           #appRunning:Z
    .end local p0
    .local v2, appRunning:I
    :goto_0
    return v2

    .line 705
    .end local v2           #appRunning:I
    .restart local v1       #appRunning:Z
    .restart local p0
    :cond_1
    const-string v10, "Mms/ConversationComposer"

    const-string v10, "Launcher App is running"

    invoke-static {v12, v10}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 706
    const-string v10, "activity"

    invoke-virtual {p0, v10}, Lcom/android/mms/ui/ConversationComposer;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 707
    .local v0, activityManager:Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v9

    .line 709
    .local v9, procInfos:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    const/4 v3, 0x0

    .end local p0
    .local v3, i:I
    :goto_1
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    if-ge v3, v10, :cond_3

    .line 711
    const/4 v5, 0x0

    .local v5, j:I
    :goto_2
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v10

    if-ge v5, v10, :cond_2

    .line 713
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 717
    .local v4, info:Landroid/content/pm/ResolveInfo;
    iget-object v10, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v11, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 719
    const/4 v1, 0x1

    .line 720
    const-string v10, "Mms/ConversationComposer"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " =procInfos.get(i).processName "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v11, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v12, v10}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 724
    .end local v4           #info:Landroid/content/pm/ResolveInfo;
    :cond_2
    if-eqz v1, :cond_5

    .end local v5           #j:I
    :cond_3
    move v2, v1

    .line 727
    .restart local v2       #appRunning:I
    goto :goto_0

    .line 711
    .end local v2           #appRunning:I
    .restart local v4       #info:Landroid/content/pm/ResolveInfo;
    .restart local v5       #j:I
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 709
    .end local v4           #info:Landroid/content/pm/ResolveInfo;
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method private composerRequestsClosing()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 804
    const-string v1, "Mms/ConversationComposer"

    const-string v2, "composerRequestsClosing()"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 806
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->getNextSplitMode()I

    move-result v0

    .line 808
    .local v0, splitMode:I
    if-ne v0, v3, :cond_1

    .line 809
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->finish()V

    .line 838
    :cond_0
    :goto_0
    return-void

    .line 815
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/android/mms/ui/SplitManager;->setSplitMode(IZ)Z

    .line 816
    if-nez v0, :cond_2

    .line 819
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationComposer;->removeComposer()V

    .line 823
    :cond_2
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationComposer;->getComposeMessageStatus()I

    move-result v1

    if-nez v1, :cond_3

    .line 825
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationComposer;->removeComposer()V

    .line 828
    :cond_3
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationList;

    if-eqz v1, :cond_0

    .line 830
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationComposer;->getComposeMessageStatus()I

    move-result v1

    if-ne v1, v3, :cond_4

    .line 831
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationList;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationList;->getConversationListAdapter()Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationListAdapter;->initListItemSelectedThreadId()V

    .line 833
    :cond_4
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationComposer;->getComposeMessageStatus()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 834
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationList;

    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessage;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessage;->getConversationThreadId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/android/mms/ui/ConversationList;->drawMessagePointer(J)V

    goto :goto_0
.end method

.method private getComposeMessageStatus()I
    .locals 4

    .prologue
    .line 895
    const/4 v0, -0x1

    .line 897
    .local v0, state:I
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessage;

    if-eqz v1, :cond_0

    .line 898
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessage;

    invoke-virtual {v1}, Lcom/android/mms/ui/ComposeMessage;->getState()I

    move-result v0

    .line 899
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationList;

    if-eqz v1, :cond_0

    .line 901
    iget-boolean v1, p0, Lcom/android/mms/ui/ConversationComposer;->mIsLandscape:Z

    if-eqz v1, :cond_1

    .line 902
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationList;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationList;->getConversationListAdapter()Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationListAdapter;->enableSplitMode()V

    .line 911
    :cond_0
    :goto_0
    const-string v1, "Mms/ConversationComposer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getComposeMessageStatus(),state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 912
    return v0

    .line 905
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationList;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationList;->getConversationListAdapter()Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationListAdapter;->disableSplitMode()V

    goto :goto_0
.end method

.method private handleMoveTaskToBack()V
    .locals 3

    .prologue
    const-string v2, "Mms/ConversationComposer"

    .line 667
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/mms/ui/ConversationComposer;->checkRunningApp()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 668
    const-string v0, "Mms/ConversationComposer"

    const-string v0, "move to back"

    invoke-static {v2, v0}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 669
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationComposer;->moveTaskToBack(Z)Z

    .line 687
    :goto_0
    return-void

    .line 671
    :cond_0
    const-string v0, "Mms/ConversationComposer"

    const-string v0, "finish"

    invoke-static {v2, v0}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 672
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->finish()V

    goto :goto_0
.end method

.method private initComposeMessage()Lcom/android/mms/ui/ComposeMessage;
    .locals 5

    .prologue
    const-string v4, "initComposeMessage"

    const-string v3, "Mms/ConversationComposer"

    .line 211
    const-string v2, "Mms/ConversationComposer"

    const-string v2, "initComposeMessage"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    const v2, 0x7f08002b

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/ConversationComposer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 213
    .local v1, vg:Landroid/view/ViewGroup;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessage;->getOrCreateView(Landroid/view/ViewGroup;)Lcom/android/mms/ui/ComposeMessage;

    move-result-object v0

    .line 215
    .local v0, composeMessage:Lcom/android/mms/ui/ComposeMessage;
    invoke-virtual {v0, p0}, Lcom/android/mms/ui/ComposeMessage;->setActivity(Landroid/app/Activity;)V

    .line 216
    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->onComposerClose:Lcom/android/mms/ui/OnEventListener;

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/ComposeMessage;->setOnCloseListener(Lcom/android/mms/ui/OnEventListener;)V

    .line 217
    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->onComposerSipUp:Lcom/android/mms/ui/OnEventListener;

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/ComposeMessage;->setOnSipUpListener(Lcom/android/mms/ui/OnEventListener;)V

    .line 218
    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->onComposerStateChanged:Lcom/android/mms/ui/OnEventListener;

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/ComposeMessage;->setOnStateChangedListener(Lcom/android/mms/ui/OnEventListener;)V

    .line 219
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/ComposeMessage;->setVisibility(I)V

    .line 220
    const-string v2, "Mms/ConversationComposer"

    const-string v2, "initComposeMessage"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    return-object v0
.end method

.method private initConversationList()Lcom/android/mms/ui/ConversationList;
    .locals 3

    .prologue
    .line 238
    const-string v1, "Mms/ConversationComposer"

    const-string v2, "initConversationList()"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    const v1, 0x7f08002a

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/ConversationComposer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/ConversationList;

    .line 240
    .local v0, conversationList:Lcom/android/mms/ui/ConversationList;
    invoke-virtual {v0, p0}, Lcom/android/mms/ui/ConversationList;->setActivity(Landroid/app/Activity;)V

    .line 242
    return-object v0
.end method

.method private initSplitManager()Z
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 732
    const-string v4, "Mms/ConversationComposer"

    const-string v5, "initSplitManager()"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 734
    const v4, 0x7f08002d

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/ConversationComposer;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    iput-object v4, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitBar:Landroid/widget/ImageButton;

    .line 735
    iget-object v4, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitBar:Landroid/widget/ImageButton;

    if-nez v4, :cond_0

    move v4, v8

    .line 789
    :goto_0
    return v4

    .line 738
    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getAllowSplitBarMove()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 739
    iget-object v4, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitBar:Landroid/widget/ImageButton;

    new-instance v5, Lcom/android/mms/ui/ConversationComposer$1;

    invoke-direct {v5, p0}, Lcom/android/mms/ui/ConversationComposer$1;-><init>(Lcom/android/mms/ui/ConversationComposer;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 755
    :cond_1
    invoke-static {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->useSplitView(Landroid/content/Context;)Z

    move-result v3

    .line 756
    .local v3, useSplitView:Z
    iput-boolean v3, p0, Lcom/android/mms/ui/ConversationComposer;->mUseSplitView:Z

    .line 758
    const/4 v2, 0x0

    .line 759
    .local v2, splitMode:I
    const/4 v1, 0x0

    .line 760
    .local v1, isRecipientsEditorVisible:Z
    iget-object v4, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessage;

    if-eqz v4, :cond_2

    .line 761
    iget-object v4, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessage;

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessage;->isRecipientsEditorVisible()Z

    move-result v1

    .line 763
    :cond_2
    if-eqz v3, :cond_8

    .line 764
    iget-boolean v4, p0, Lcom/android/mms/ui/ConversationComposer;->mIsLandscape:Z

    if-eqz v4, :cond_6

    .line 765
    iget-boolean v4, p0, Lcom/android/mms/ui/ConversationComposer;->mIsComposerOnly:Z

    if-nez v4, :cond_3

    iget-boolean v4, p0, Lcom/android/mms/ui/ConversationComposer;->mForceShowComposer:Z

    if-eqz v4, :cond_5

    :cond_3
    if-eqz v1, :cond_5

    .line 766
    const/4 v2, 0x1

    .line 780
    :cond_4
    :goto_1
    const-string v4, "window"

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/ConversationComposer;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 781
    .local v0, display:Landroid/view/Display;
    new-instance v4, Lcom/android/mms/ui/SplitManager;

    iget-object v5, p0, Lcom/android/mms/ui/ConversationComposer;->mLeftScreen:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/android/mms/ui/ConversationComposer;->mRightScreen:Landroid/widget/FrameLayout;

    iget-object v7, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitBar:Landroid/widget/ImageButton;

    invoke-direct {v4, v5, v6, v7, p0}, Lcom/android/mms/ui/SplitManager;-><init>(Landroid/view/View;Landroid/view/View;Landroid/view/View;Lcom/android/mms/ui/ConversationComposer;)V

    iput-object v4, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    .line 782
    iget-object v4, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/mms/ui/SplitManager;->setWidth(I)V

    .line 783
    if-ne v3, v9, :cond_a

    .line 784
    iget-object v4, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    iget-boolean v5, p0, Lcom/android/mms/ui/ConversationComposer;->mIsLandscape:Z

    invoke-virtual {v4, v5}, Lcom/android/mms/ui/SplitManager;->setUseSplitMode(Z)V

    .line 787
    :goto_2
    iget-object v4, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {v4, v2, v8}, Lcom/android/mms/ui/SplitManager;->setSplitMode(IZ)Z

    move v4, v9

    .line 789
    goto :goto_0

    .line 768
    .end local v0           #display:Landroid/view/Display;
    :cond_5
    const/4 v2, 0x2

    goto :goto_1

    .line 770
    :cond_6
    iget-boolean v4, p0, Lcom/android/mms/ui/ConversationComposer;->mIsComposerOnly:Z

    if-nez v4, :cond_7

    iget-boolean v4, p0, Lcom/android/mms/ui/ConversationComposer;->mForceShowComposer:Z

    if-eqz v4, :cond_4

    .line 771
    :cond_7
    const/4 v2, 0x1

    goto :goto_1

    .line 775
    :cond_8
    iget-boolean v4, p0, Lcom/android/mms/ui/ConversationComposer;->mIsComposerOnly:Z

    if-nez v4, :cond_9

    iget-boolean v4, p0, Lcom/android/mms/ui/ConversationComposer;->mForceShowComposer:Z

    if-eqz v4, :cond_4

    .line 776
    :cond_9
    const/4 v2, 0x1

    goto :goto_1

    .line 786
    .restart local v0       #display:Landroid/view/Display;
    :cond_a
    iget-object v4, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {v4, v8}, Lcom/android/mms/ui/SplitManager;->setUseSplitMode(Z)V

    goto :goto_2
.end method

.method private static isIntentForApplication(Landroid/content/Intent;)Z
    .locals 4
    .parameter "intent"

    .prologue
    .line 153
    const/4 v0, 0x0

    .line 154
    .local v0, result:Z
    invoke-static {p0}, Lcom/android/mms/ui/ConversationComposer;->isIntentFromLauncher(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 155
    const/4 v0, 0x1

    .line 166
    :goto_0
    const-string v1, "Mms/ConversationComposer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isIntentForApplication(),return="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    return v0

    .line 157
    :cond_0
    invoke-static {p0}, Lcom/android/mms/ui/ConversationComposer;->isItentFromSearch(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 158
    const/4 v0, 0x1

    goto :goto_0

    .line 160
    :cond_1
    invoke-static {p0}, Lcom/android/mms/ui/ConversationComposer;->isIntentFromSwitcher(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 161
    const/4 v0, 0x1

    goto :goto_0

    .line 163
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isIntentForComposer(Landroid/content/Intent;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 188
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 189
    const/4 v1, 0x0

    .line 191
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    .line 192
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 194
    if-nez v0, :cond_0

    move v0, v3

    .line 206
    :goto_0
    const-string v1, "Mms/ConversationComposer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isIntentForComposer(),return="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    return v0

    .line 196
    :cond_0
    const-class v2, Lcom/android/mms/ui/ComposeMessage;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-class v2, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "com.android.mms.ui.ComposeMessageActivity"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "com.android.mms.ui.ForwardMessageActivity"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    move v0, v3

    .line 200
    goto :goto_0

    .line 202
    :cond_2
    const-string v2, "android.intent.action.MAIN"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v3

    .line 203
    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method private static isIntentForList(Landroid/content/Intent;)Z
    .locals 3
    .parameter "intent"

    .prologue
    .line 147
    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 148
    .local v0, hasMain:Z
    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/mms/ui/ConversationComposer;->isIntentForApplication(Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isIntentFromLauncher(Landroid/content/Intent;)Z
    .locals 1
    .parameter "intent"

    .prologue
    .line 178
    const-string v0, "android.intent.category.LAUNCHER"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static isIntentFromSwitcher(Landroid/content/Intent;)Z
    .locals 2
    .parameter "intent"

    .prologue
    .line 173
    const/high16 v0, 0x10

    invoke-virtual {p0}, Landroid/content/Intent;->getFlags()I

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isItentFromSearch(Landroid/content/Intent;)Z
    .locals 3
    .parameter "intent"

    .prologue
    .line 183
    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 184
    .local v0, hasMain:Z
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private refreshSplitManager(Z)V
    .locals 6
    .parameter "ignoreSameSplitView"

    .prologue
    const/4 v5, 0x0

    .line 966
    const-string v2, "Mms/ConversationComposer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "refreshSplitManager(),ignoreSameSplitView="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 968
    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    if-nez v2, :cond_1

    .line 998
    :cond_0
    :goto_0
    return-void

    .line 971
    :cond_1
    invoke-static {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->useSplitView(Landroid/content/Context;)Z

    move-result v1

    .line 972
    .local v1, useSplitView:Z
    iget-boolean v2, p0, Lcom/android/mms/ui/ConversationComposer;->mUseSplitView:Z

    if-ne v2, v1, :cond_3

    .line 973
    if-nez p1, :cond_0

    .line 976
    if-eqz v1, :cond_2

    .line 977
    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    iget-boolean v3, p0, Lcom/android/mms/ui/ConversationComposer;->mIsLandscape:Z

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/SplitManager;->setUseSplitMode(Z)V

    .line 978
    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-direct {p0}, Lcom/android/mms/ui/ConversationComposer;->calcSplitMode()I

    move-result v3

    invoke-virtual {v2, v3, v5}, Lcom/android/mms/ui/SplitManager;->setSplitMode(IZ)Z

    goto :goto_0

    .line 980
    :cond_2
    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {v2, v5}, Lcom/android/mms/ui/SplitManager;->setUseSplitMode(Z)V

    .line 981
    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {v2}, Lcom/android/mms/ui/SplitManager;->refreshLayouts()Z

    goto :goto_0

    .line 984
    :cond_3
    iput-boolean v1, p0, Lcom/android/mms/ui/ConversationComposer;->mUseSplitView:Z

    .line 985
    const/4 v0, 0x0

    .line 986
    .local v0, splitMode:I
    if-eqz v1, :cond_5

    .line 987
    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    iget-boolean v3, p0, Lcom/android/mms/ui/ConversationComposer;->mIsLandscape:Z

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/SplitManager;->setUseSplitMode(Z)V

    .line 988
    iget-boolean v2, p0, Lcom/android/mms/ui/ConversationComposer;->mIsLandscape:Z

    if-eqz v2, :cond_4

    .line 989
    const/4 v0, 0x2

    .line 994
    :cond_4
    :goto_1
    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {v2, v0, v5}, Lcom/android/mms/ui/SplitManager;->setSplitMode(IZ)Z

    move-result v2

    if-nez v2, :cond_0

    .line 995
    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {v2}, Lcom/android/mms/ui/SplitManager;->refreshLayouts()Z

    goto :goto_0

    .line 991
    :cond_5
    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    iget-boolean v3, p0, Lcom/android/mms/ui/ConversationComposer;->mIsLandscape:Z

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/SplitManager;->setUseSplitMode(Z)V

    goto :goto_1
.end method

.method private removeComposer()V
    .locals 3

    .prologue
    .line 841
    const-string v1, "Mms/ConversationComposer"

    const-string v2, "removeComposer()"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 843
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessage;

    if-nez v1, :cond_0

    .line 855
    :goto_0
    return-void

    .line 846
    :cond_0
    const v1, 0x7f08002b

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/ConversationComposer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 847
    .local v0, vg:Landroid/view/ViewGroup;
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessage;

    invoke-virtual {v1}, Lcom/android/mms/ui/ComposeMessage;->onPause()V

    .line 849
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessage;

    invoke-virtual {v1}, Lcom/android/mms/ui/ComposeMessage;->hideSipExplicit()V

    .line 851
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessage;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/ComposeMessage;->onStop(Z)V

    .line 852
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessage;

    invoke-virtual {v1}, Lcom/android/mms/ui/ComposeMessage;->onDestroy()V

    .line 853
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessage;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 854
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessage;

    goto :goto_0
.end method

.method private showEmptyScreen(Z)V
    .locals 3
    .parameter "show"

    .prologue
    .line 858
    const-string v0, "Mms/ConversationComposer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showEmptyScreen(),show="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 860
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessage;

    if-nez v0, :cond_0

    .line 868
    :goto_0
    return-void

    .line 863
    :cond_0
    if-eqz p1, :cond_1

    .line 864
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessage;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ComposeMessage;->setVisibility(I)V

    goto :goto_0

    .line 866
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ComposeMessage;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public CreateConversationList()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const-string v2, "Mms/ConversationComposer"

    .line 225
    const-string v0, "Mms/ConversationComposer"

    const-string v0, "CreateConversationList()"

    invoke-static {v2, v0}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationList;

    if-eqz v0, :cond_0

    .line 235
    :goto_0
    return-void

    .line 229
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationComposer;->initConversationList()Lcom/android/mms/ui/ConversationList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationList;

    .line 230
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationList;

    invoke-virtual {v0, v1, v1}, Lcom/android/mms/ui/ConversationList;->onCreate(Landroid/os/Bundle;Landroid/content/Intent;)V

    .line 231
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationList;

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationList;->onStart()V

    .line 232
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationList;

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationList;->onResume()V

    .line 234
    const-string v0, "Mms/ConversationComposer"

    const-string v0, "CreateConversationList() Created"

    invoke-static {v2, v0}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public ShowSipOnComposeMessage()V
    .locals 1

    .prologue
    .line 1059
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessage;

    if-eqz v0, :cond_0

    .line 1060
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessage;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessage;->showSip()V

    .line 1061
    :cond_0
    return-void
.end method

.method public getNextSplitMode()I
    .locals 1

    .prologue
    .line 793
    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationComposer;->mIsFinish:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationComposer;->mIsComposerOnly:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationComposer;->mIsLandscape:Z

    if-nez v0, :cond_1

    .line 794
    :cond_0
    const/4 v0, -0x1

    .line 799
    :goto_0
    return v0

    .line 796
    :cond_1
    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationComposer;->mIsLandscape:Z

    if-eqz v0, :cond_2

    invoke-static {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->useSplitView(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 797
    const/4 v0, 0x2

    goto :goto_0

    .line 799
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSplitMode()I
    .locals 4

    .prologue
    .line 1053
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {v0}, Lcom/android/mms/ui/SplitManager;->getSplitMode()I

    move-result v0

    .line 1054
    const-string v1, "Mms/ConversationComposer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSplitMode,return="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1055
    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 462
    const-string v0, "Mms/ConversationComposer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult(),requestCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 466
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessage;

    if-eqz v0, :cond_0

    .line 467
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessage;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/mms/ui/ComposeMessage;->onActivityResult(IILandroid/content/Intent;)V

    .line 468
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6
    .parameter "newConfig"

    .prologue
    const/4 v4, 0x0

    const-string v5, "Mms/ConversationComposer"

    .line 433
    const-string v2, "Mms/ConversationComposer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onConfigurationChanged(),newConfig="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/res/Configuration;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    const/4 v2, 0x1

    move v1, v2

    .line 437
    .local v1, isLandscape:Z
    :goto_0
    iget-boolean v2, p0, Lcom/android/mms/ui/ConversationComposer;->mIsLandscape:Z

    if-eq v2, v1, :cond_1

    .line 438
    const-string v2, "Mms/ConversationComposer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onConfigurationChanged():Landscape changed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    iput-boolean v1, p0, Lcom/android/mms/ui/ConversationComposer;->mIsLandscape:Z

    .line 442
    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    if-eqz v2, :cond_0

    .line 443
    const-string v2, "window"

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/ConversationComposer;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 445
    .local v0, display:Landroid/view/Display;
    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/SplitManager;->setWidth(I)V

    .line 448
    .end local v0           #display:Landroid/view/Display;
    :cond_0
    invoke-direct {p0, v4}, Lcom/android/mms/ui/ConversationComposer;->refreshSplitManager(Z)V

    .line 452
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 454
    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationList;

    if-eqz v2, :cond_2

    .line 455
    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationList;

    invoke-virtual {v2, p1}, Lcom/android/mms/ui/ConversationList;->configurationChanged(Landroid/content/res/Configuration;)V

    .line 456
    :cond_2
    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessage;

    if-eqz v2, :cond_3

    .line 457
    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessage;

    invoke-virtual {v2, p1}, Lcom/android/mms/ui/ComposeMessage;->configurationChanged(Landroid/content/res/Configuration;)V

    .line 458
    :cond_3
    return-void

    .end local v1           #isLandscape:Z
    :cond_4
    move v1, v4

    .line 435
    goto :goto_0
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    .line 472
    const-string v0, "Mms/ConversationComposer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onContextItemSelected,item="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationList;

    if-eqz v0, :cond_0

    .line 475
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationList;

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/ConversationList;->onContextItemSelected(Landroid/view/MenuItem;)V

    .line 477
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onConversationDeleteMode()V
    .locals 2

    .prologue
    .line 1044
    const-string v0, "Mms/ConversationComposer"

    const-string v1, "onConversationDeleteMode"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1046
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {v0}, Lcom/android/mms/ui/SplitManager;->getSplitMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1048
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationComposer;->removeComposer()V

    .line 1050
    :cond_0
    return-void
.end method

.method public onConversationDeleteStart()V
    .locals 1

    .prologue
    .line 1125
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessage;

    if-eqz v0, :cond_0

    .line 1126
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessage;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessage;->onDeleteStarting()V

    .line 1128
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 81
    const-string v3, "Mms/ConversationComposer"

    const-string v4, "onCreate()"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const v3, 0x7f030007

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/ConversationComposer;->setContentView(I)V

    .line 86
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_7

    move v3, v6

    :goto_0
    iput-boolean v3, p0, Lcom/android/mms/ui/ConversationComposer;->mIsLandscape:Z

    .line 88
    const v3, 0x7f080029

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/ConversationComposer;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/mms/ui/ConversationComposer;->mLeftScreen:Landroid/widget/LinearLayout;

    .line 89
    const v3, 0x7f08002b

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/ConversationComposer;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    iput-object v3, p0, Lcom/android/mms/ui/ConversationComposer;->mRightScreen:Landroid/widget/FrameLayout;

    .line 92
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 93
    .local v1, intent:Landroid/content/Intent;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationComposer;->isIntentForApplication(Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 94
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationComposer;->initConversationList()Lcom/android/mms/ui/ConversationList;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationList;

    .line 97
    :cond_0
    invoke-static {p1}, Lcom/android/mms/ui/ComposeMessage;->containsOwnBundle(Landroid/os/Bundle;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/mms/ui/ConversationComposer;->mForceShowComposer:Z

    .line 99
    invoke-direct {p0, v1}, Lcom/android/mms/ui/ConversationComposer;->isIntentForComposer(Landroid/content/Intent;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/android/mms/ui/ConversationComposer;->mForceShowComposer:Z

    if-eqz v3, :cond_2

    .line 100
    :cond_1
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationComposer;->initComposeMessage()Lcom/android/mms/ui/ComposeMessage;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessage;

    .line 103
    :cond_2
    iget-object v3, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationList;

    if-nez v3, :cond_8

    iget-object v3, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessage;

    if-eqz v3, :cond_8

    move v3, v6

    :goto_1
    iput-boolean v3, p0, Lcom/android/mms/ui/ConversationComposer;->mIsComposerOnly:Z

    .line 108
    iget-object v3, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationList;

    if-eqz v3, :cond_4

    .line 110
    const/4 v0, 0x0

    .line 111
    .local v0, bundle:Landroid/os/Bundle;
    iget-object v3, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationList;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 112
    .local v2, key:Ljava/lang/String;
    if-eqz p1, :cond_3

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 113
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 114
    :cond_3
    iget-object v3, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationList;

    invoke-virtual {v3, v0, v1}, Lcom/android/mms/ui/ConversationList;->onCreate(Landroid/os/Bundle;Landroid/content/Intent;)V

    .line 118
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v2           #key:Ljava/lang/String;
    :cond_4
    iget-object v3, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessage;

    if-eqz v3, :cond_9

    .line 121
    const/4 v0, 0x0

    .line 122
    .restart local v0       #bundle:Landroid/os/Bundle;
    iget-object v3, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessage;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 123
    .restart local v2       #key:Ljava/lang/String;
    if-eqz p1, :cond_5

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 124
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 126
    :cond_5
    if-eqz v0, :cond_6

    .line 127
    new-instance v1, Landroid/content/Intent;

    .end local v1           #intent:Landroid/content/Intent;
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 129
    .restart local v1       #intent:Landroid/content/Intent;
    :cond_6
    iget-object v3, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessage;

    invoke-virtual {v3, v0, v1}, Lcom/android/mms/ui/ComposeMessage;->onCreate(Landroid/os/Bundle;Landroid/content/Intent;)V

    .line 131
    invoke-direct {p0, v5}, Lcom/android/mms/ui/ConversationComposer;->showEmptyScreen(Z)V

    .line 136
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v2           #key:Ljava/lang/String;
    :goto_2
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationComposer;->initSplitManager()Z

    .line 141
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 143
    return-void

    .end local v1           #intent:Landroid/content/Intent;
    :cond_7
    move v3, v5

    .line 86
    goto/16 :goto_0

    .restart local v1       #intent:Landroid/content/Intent;
    :cond_8
    move v3, v5

    .line 103
    goto :goto_1

    .line 133
    :cond_9
    invoke-direct {p0, v6}, Lcom/android/mms/ui/ConversationComposer;->showEmptyScreen(Z)V

    goto :goto_2
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 1
    .parameter "id"

    .prologue
    .line 1084
    packed-switch p1, :pswitch_data_0

    .line 1092
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 1086
    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessage;

    if-eqz v0, :cond_0

    .line 1087
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessage;

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/ComposeMessage;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 1084
    :pswitch_data_0
    .packed-switch 0x7f080000
        :pswitch_0
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 350
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 352
    const-string v0, "Mms/ConversationComposer"

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationList;

    if-eqz v0, :cond_0

    .line 355
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationList;

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationList;->onDestroy()V

    .line 356
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessage;

    if-eqz v0, :cond_1

    .line 357
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessage;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessage;->onDestroy()V

    .line 358
    :cond_1
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const-string v2, "Mms/ConversationComposer"

    .line 583
    const-string v0, "Mms/ConversationComposer"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  onKeyDown(): keyCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    const/16 v0, 0x74

    if-ne p1, v0, :cond_0

    .line 588
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessage;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessage;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 589
    const-string v0, "Mms/ConversationComposer"

    const-string v0, "call   mComposeMessage.onKeyDown "

    invoke-static {v2, v0}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessage;

    invoke-virtual {v0, p1, p2}, Lcom/android/mms/ui/ComposeMessage;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 591
    const/4 v0, 0x1

    .line 595
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 7
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 605
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v2

    const/16 v3, 0x20

    if-ne v2, v3, :cond_0

    move v2, v4

    .line 660
    :goto_0
    return v2

    .line 609
    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v2

    if-nez v2, :cond_1

    move v2, v5

    .line 610
    goto :goto_0

    .line 613
    :cond_1
    if-ne p1, v6, :cond_6

    .line 614
    const-string v2, "Mms/ConversationComposer"

    const-string v3, "onKeyUp():KEYCODE_BACK"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v4

    .line 617
    goto :goto_0

    .line 619
    :cond_2
    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {v2}, Lcom/android/mms/ui/SplitManager;->getSplitMode()I

    move-result v0

    .line 620
    .local v0, splitMode:I
    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationList;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationList;

    invoke-virtual {v2}, Lcom/android/mms/ui/ConversationList;->isDeleteMode()Z

    move-result v2

    if-ne v2, v4, :cond_4

    iget-boolean v2, p0, Lcom/android/mms/ui/ConversationComposer;->mIsLandscape:Z

    if-nez v2, :cond_3

    if-nez v0, :cond_4

    .line 622
    :cond_3
    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationList;

    invoke-virtual {v2, v5, v4}, Lcom/android/mms/ui/ConversationList;->setDeleteModeLayout(ZZ)V

    move v2, v4

    .line 623
    goto :goto_0

    .line 626
    :cond_4
    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessage;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessage;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessage;->isDeleteMode()Z

    move-result v2

    if-ne v2, v4, :cond_5

    .line 627
    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessage;

    invoke-virtual {v2, v5}, Lcom/android/mms/ui/ComposeMessage;->setDeleteModeLayout(Z)V

    move v2, v4

    .line 628
    goto :goto_0

    .line 631
    :cond_5
    iput-boolean v5, p0, Lcom/android/mms/ui/ConversationComposer;->mIsFinish:Z

    .line 632
    if-eq v0, v4, :cond_7

    .line 633
    iput-boolean v4, p0, Lcom/android/mms/ui/ConversationComposer;->mIsFinish:Z

    .line 645
    .end local v0           #splitMode:I
    :cond_6
    :goto_1
    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessage;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessage;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessage;->getVisibility()I

    move-result v2

    if-nez v2, :cond_9

    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessage;

    invoke-virtual {v2, p1, p2}, Lcom/android/mms/ui/ComposeMessage;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    if-ne v2, v4, :cond_9

    move v2, v4

    .line 647
    goto :goto_0

    .line 634
    .restart local v0       #splitMode:I
    :cond_7
    iget-boolean v2, p0, Lcom/android/mms/ui/ConversationComposer;->mIsComposerOnly:Z

    if-eqz v2, :cond_6

    .line 635
    invoke-static {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->useSplitView(Landroid/content/Context;)Z

    move-result v1

    .line 637
    .local v1, useSplitView:Z
    iget-boolean v2, p0, Lcom/android/mms/ui/ConversationComposer;->mIsLandscape:Z

    if-eqz v2, :cond_8

    if-eqz v1, :cond_8

    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessage;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessage;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessage;->isRecipientsEditorVisible()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 639
    :cond_8
    iput-boolean v4, p0, Lcom/android/mms/ui/ConversationComposer;->mIsFinish:Z

    goto :goto_1

    .line 652
    .end local v0           #splitMode:I
    .end local v1           #useSplitView:Z
    :cond_9
    iget-boolean v2, p0, Lcom/android/mms/ui/ConversationComposer;->mIsFinish:Z

    if-eqz v2, :cond_a

    if-ne p1, v6, :cond_a

    .line 653
    iget-boolean v2, p0, Lcom/android/mms/ui/ConversationComposer;->mUseMoveTaskToBack:Z

    if-eqz v2, :cond_a

    .line 654
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationComposer;->handleMoveTaskToBack()V

    move v2, v4

    .line 655
    goto/16 :goto_0

    .line 660
    :cond_a
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto/16 :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 6
    .parameter "intent"

    .prologue
    const/4 v5, 0x0

    const-string v4, "Mms/ConversationComposer"

    .line 368
    const-string v2, "Mms/ConversationComposer"

    const-string v2, "\tonNewIntent()"

    invoke-static {v4, v2}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 374
    invoke-static {p1}, Lcom/android/mms/ui/ConversationComposer;->isIntentForApplication(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 375
    const-string v2, "Mms/ConversationComposer"

    const-string v2, "isIntentForApplication(), just bring to front"

    invoke-static {v4, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    :goto_0
    return-void

    .line 379
    :cond_0
    invoke-static {p1}, Lcom/android/mms/ui/ConversationComposer;->isIntentForList(Landroid/content/Intent;)Z

    move-result v0

    .line 381
    .local v0, forList:Z
    if-eqz v0, :cond_1

    .line 382
    const-string v2, "Mms/ConversationComposer"

    const-string v2, "isIntentForList(), show list"

    invoke-static {v4, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationList;

    if-eqz v2, :cond_4

    .line 384
    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationList;

    invoke-virtual {v2, p1}, Lcom/android/mms/ui/ConversationList;->onNewIntent(Landroid/content/Intent;)V

    .line 393
    :cond_1
    :goto_1
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ConversationComposer;->isIntentForComposer(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 395
    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {v2}, Lcom/android/mms/ui/SplitManager;->getAnimationEnable()Z

    move-result v1

    .line 397
    .local v1, tempAnimationEnabled:Z
    if-nez v0, :cond_2

    .line 398
    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/SplitManager;->setAnimationEnable(Z)V

    .line 401
    :cond_2
    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessage;

    if-eqz v2, :cond_5

    .line 402
    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessage;

    invoke-virtual {v2, p1}, Lcom/android/mms/ui/ComposeMessage;->onNewIntent(Landroid/content/Intent;)V

    .line 410
    :goto_2
    if-nez v0, :cond_3

    .line 411
    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {v2, v1}, Lcom/android/mms/ui/SplitManager;->setAnimationEnable(Z)V

    .line 428
    .end local v1           #tempAnimationEnabled:Z
    :cond_3
    :goto_3
    const-string v2, "Mms/ConversationComposer"

    const-string v2, "onNewIntent()"

    invoke-static {v4, v2}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 386
    :cond_4
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationComposer;->initConversationList()Lcom/android/mms/ui/ConversationList;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationList;

    .line 387
    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationList;

    invoke-virtual {v2, v5, p1}, Lcom/android/mms/ui/ConversationList;->onCreate(Landroid/os/Bundle;Landroid/content/Intent;)V

    .line 388
    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationList;

    invoke-virtual {v2}, Lcom/android/mms/ui/ConversationList;->onStart()V

    .line 389
    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationList;

    invoke-virtual {v2}, Lcom/android/mms/ui/ConversationList;->onResume()V

    goto :goto_1

    .line 404
    .restart local v1       #tempAnimationEnabled:Z
    :cond_5
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationComposer;->initComposeMessage()Lcom/android/mms/ui/ComposeMessage;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessage;

    .line 405
    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessage;

    invoke-virtual {v2, v5, p1}, Lcom/android/mms/ui/ComposeMessage;->onCreate(Landroid/os/Bundle;Landroid/content/Intent;)V

    .line 406
    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessage;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessage;->onStart()V

    .line 407
    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessage;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessage;->onResume()V

    goto :goto_2

    .line 423
    .end local v1           #tempAnimationEnabled:Z
    :cond_6
    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessage;

    if-eqz v2, :cond_3

    .line 424
    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessage;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessage;->close()V

    goto :goto_3
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    .line 482
    const-string v0, "Mms/ConversationComposer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onOptionsItemSelected(),item="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationComposer;->mOptionSelectResult:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationList;

    if-eqz v0, :cond_0

    .line 488
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationList;

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/ConversationList;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mms/ui/ConversationComposer;->mOptionSelectResult:Z

    .line 490
    :cond_0
    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationComposer;->mOptionSelectResult:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessage;

    if-eqz v0, :cond_1

    .line 491
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessage;

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/ComposeMessage;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mms/ui/ConversationComposer;->mOptionSelectResult:Z

    .line 494
    :cond_1
    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationComposer;->mOptionSelectResult:Z

    return v0
.end method

.method public onOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 2
    .parameter "menu"

    .prologue
    .line 535
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsMenuClosed(Landroid/view/Menu;)V

    .line 536
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/ui/ConversationComposer;->mOptionMenuCount:I

    .line 538
    const-string v0, "Mms/ConversationComposer"

    const-string v1, "onOptionsMenuClosed()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 326
    const-string v0, "Mms/ConversationComposer"

    const-string v1, "\t\tonPause()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 329
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationList;

    if-eqz v0, :cond_0

    .line 332
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessage;

    if-eqz v0, :cond_1

    .line 333
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessage;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessage;->onPause()V

    .line 335
    :cond_1
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x0

    .line 506
    const-string v1, "Mms/ConversationComposer"

    const-string v2, "onPrepareOptionsMenu()"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 509
    iput-boolean v3, p0, Lcom/android/mms/ui/ConversationComposer;->mOptionSelectResult:Z

    .line 510
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessage;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessage;

    invoke-virtual {v1}, Lcom/android/mms/ui/ComposeMessage;->isDeleteMode()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v3

    .line 530
    :goto_0
    return v1

    .line 513
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationList;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationList;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationList;->isDeleteMode()Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v3

    .line 514
    goto :goto_0

    .line 516
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {v1}, Lcom/android/mms/ui/SplitManager;->getSplitMode()I

    move-result v0

    .line 518
    .local v0, splitMode:I
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessage;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessage;

    invoke-virtual {v1}, Lcom/android/mms/ui/ComposeMessage;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    if-eqz v0, :cond_2

    .line 520
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessage;

    invoke-virtual {v1, p1}, Lcom/android/mms/ui/ComposeMessage;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 522
    :cond_2
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationList;

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    .line 523
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationList;

    invoke-virtual {v1, p1}, Lcom/android/mms/ui/ConversationList;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 525
    :cond_3
    iget v1, p0, Lcom/android/mms/ui/ConversationComposer;->mOptionMenuCount:I

    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v2

    if-le v1, v2, :cond_4

    .line 526
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->closeOptionsMenu()V

    .line 528
    :cond_4
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v1

    iput v1, p0, Lcom/android/mms/ui/ConversationComposer;->mOptionMenuCount:I

    .line 530
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 1122
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 303
    const-string v1, "Mms/ConversationComposer"

    const-string v2, "\t\tonResume()"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 308
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 311
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->isAnimationEnable()Z

    move-result v0

    .line 312
    .local v0, isAnimationEnable:Z
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    if-eqz v1, :cond_0

    .line 313
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {v1, v0}, Lcom/android/mms/ui/SplitManager;->setAnimationEnable(Z)V

    .line 315
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationList;

    if-eqz v1, :cond_1

    .line 316
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationList;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationList;->onResume()V

    .line 317
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessage;

    if-eqz v1, :cond_2

    .line 318
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessage;

    invoke-virtual {v1, v0}, Lcom/android/mms/ui/ComposeMessage;->setAnimationEnable(Z)V

    .line 319
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessage;

    invoke-virtual {v1}, Lcom/android/mms/ui/ComposeMessage;->onResume()V

    .line 322
    :cond_2
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "outState"

    .prologue
    .line 267
    const-string v1, "Mms/ConversationComposer"

    const-string v2, "\t\tonSaveInstanceState()"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 271
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationList;

    if-eqz v1, :cond_0

    .line 272
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 273
    .local v0, bundle:Landroid/os/Bundle;
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationList;

    invoke-virtual {v1, v0}, Lcom/android/mms/ui/ConversationList;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 274
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationList;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 277
    .end local v0           #bundle:Landroid/os/Bundle;
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessage;

    if-eqz v1, :cond_1

    .line 278
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 279
    .restart local v0       #bundle:Landroid/os/Bundle;
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessage;

    invoke-virtual {v1, v0}, Lcom/android/mms/ui/ComposeMessage;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 281
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessage;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 284
    .end local v0           #bundle:Landroid/os/Bundle;
    :cond_1
    return-void
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 500
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->closeOptionsMenu()V

    .line 501
    invoke-super {p0}, Landroid/app/Activity;->onSearchRequested()Z

    move-result v0

    return v0
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 248
    const-string v0, "Mms/ConversationComposer"

    const-string v1, "\tonStart()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 251
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/ConversationComposer;->mIsFinish:Z

    .line 254
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ConversationComposer;->refreshSplitManager(Z)V

    .line 257
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationList;

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationList;

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationList;->onStart()V

    .line 259
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessage;

    if-eqz v0, :cond_1

    .line 260
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessage;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessage;->onStart()V

    .line 263
    :cond_1
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 339
    const-string v0, "Mms/ConversationComposer"

    const-string v1, "\tonStop()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 342
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationList;

    if-eqz v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationList;

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationList;->onStop()V

    .line 344
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessage;

    if-eqz v0, :cond_1

    .line 345
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ComposeMessage;->onStop(Z)V

    .line 346
    :cond_1
    return-void
.end method

.method public onUserInteraction()V
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessage;

    if-eqz v0, :cond_0

    .line 363
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessage;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessage;->onUserInteraction()V

    .line 364
    :cond_0
    return-void
.end method

.method public openThread(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 1064
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessage;

    if-eqz v0, :cond_0

    .line 1065
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessage;

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/ComposeMessage;->onNewIntent(Landroid/content/Intent;)V

    .line 1073
    :goto_0
    return-void

    .line 1067
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationComposer;->initComposeMessage()Lcom/android/mms/ui/ComposeMessage;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessage;

    .line 1068
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/mms/ui/ComposeMessage;->onCreate(Landroid/os/Bundle;Landroid/content/Intent;)V

    .line 1069
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessage;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessage;->onStart()V

    .line 1070
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->isAnimationEnable()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ComposeMessage;->setAnimationEnable(Z)V

    .line 1071
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessage;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessage;->onResume()V

    goto :goto_0
.end method

.method public requestDrawPointerOnConverationList(J)Z
    .locals 1
    .parameter "threadId"

    .prologue
    .line 1104
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationList;

    if-nez v0, :cond_0

    .line 1105
    const/4 v0, 0x0

    .line 1107
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationList;

    invoke-virtual {v0, p1, p2}, Lcom/android/mms/ui/ConversationList;->requestDrawPointerOnConverationList(J)Z

    move-result v0

    goto :goto_0
.end method

.method public requestFocusOnComposer()Z
    .locals 1

    .prologue
    .line 1111
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessage;

    if-nez v0, :cond_0

    .line 1112
    const/4 v0, 0x0

    .line 1114
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessage;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessage;->requestFocusOnComposer()Z

    move-result v0

    goto :goto_0
.end method

.method public requsetFocusOnConversationList(J)Z
    .locals 1
    .parameter "threadId"

    .prologue
    .line 1096
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationList;

    if-nez v0, :cond_0

    .line 1097
    const/4 v0, 0x0

    .line 1099
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationList;

    invoke-virtual {v0, p1, p2}, Lcom/android/mms/ui/ConversationList;->requestFocusOnConversationList(J)Z

    move-result v0

    goto :goto_0
.end method

.method public setConversationSelectAll(Z)V
    .locals 3
    .parameter "checked"

    .prologue
    .line 1026
    const-string v0, "Mms/ConversationComposer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setConversationSelectAll(),checked="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1028
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationList;

    if-nez v0, :cond_0

    .line 1032
    :goto_0
    return-void

    .line 1031
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationList;

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/ConversationList;->setSelectAll(Z)V

    goto :goto_0
.end method

.method public setMessageSelectAll(Z)V
    .locals 3
    .parameter

    .prologue
    .line 1035
    const-string v0, "Mms/ConversationComposer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMessageSelectAll(),checked="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1037
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessage;

    if-nez v0, :cond_0

    .line 1041
    :goto_0
    return-void

    .line 1040
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessage;

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/ComposeMessage;->setSelectAll(Z)V

    goto :goto_0
.end method
