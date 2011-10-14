.class public Lcom/android/mms/ui/ConversationList;
.super Landroid/widget/FrameLayout;
.source "ConversationList.java"

# interfaces
.implements Lcom/android/mms/util/DraftCache$OnDraftChangedListener;
.implements Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;,
        Lcom/android/mms/ui/ConversationList$DeleteThreadListener;
    }
.end annotation


# static fields
.field public static bindCount:I

.field public static createdAt:J

.field private static deleteComplete:Z

.field public static mIsEmptyThread:Z


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private final mContentChangedListener:Lcom/android/mms/ui/ConversationListAdapter$OnContentChangedListener;

.field private mContextMenuSelectedConversation:Lcom/android/mms/data/Conversation;

.field private final mConvListOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

.field private mConversationHeader:Landroid/widget/LinearLayout;

.field private mConversationTitle:Landroid/widget/LinearLayout;

.field private mCountToDelete:I

.field private mDeleteConfirmDialog:Landroid/content/DialogInterface;

.field private mDeleteEventHandler:Landroid/os/Handler;

.field private mDeleteSoftkeyView:Lcom/sec/android/touchwiz/widget/TwSoftkeyView;

.field private mFirstItemId:J

.field private mHandler:Landroid/os/Handler;

.field private mIsDeleteMode:Z

.field private mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

.field private mListView:Lcom/sec/android/touchwiz/widget/TwListView;

.field private mNewCompose:Landroid/widget/LinearLayout;

.field private final mNewComposeKeyListener:Landroid/view/View$OnKeyListener;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mQueryHandler:Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;

.field private mSelectAll:Landroid/widget/LinearLayout;

.field private mSelectAllCheckBox:Landroid/widget/CheckBox;

.field private mSoftkeyLeft:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

.field private mSoftkeyRight:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

.field private final mThreadListKeyListener:Landroid/view/View$OnKeyListener;

.field mTotalConversations:Landroid/widget/TextView;

.field private mVisibleOffset:I

.field private onConversationListItemClick:Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemClickListener;

.field private onNewMessage:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 183
    sput-boolean v2, Lcom/android/mms/ui/ConversationList;->deleteComplete:Z

    .line 201
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/mms/ui/ConversationList;->createdAt:J

    .line 203
    sput v2, Lcom/android/mms/ui/ConversationList;->bindCount:I

    .line 1069
    sput-boolean v2, Lcom/android/mms/ui/ConversationList;->mIsEmptyThread:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 87
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 156
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mms/ui/ConversationList;->mVisibleOffset:I

    .line 158
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/mms/ui/ConversationList;->mFirstItemId:J

    .line 175
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/ConversationList;->mIsDeleteMode:Z

    .line 195
    new-instance v0, Lcom/android/mms/ui/ConversationList$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ConversationList$1;-><init>(Lcom/android/mms/ui/ConversationList;)V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationList;->onNewMessage:Landroid/view/View$OnClickListener;

    .line 210
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/ConversationList;->mContextMenuSelectedConversation:Lcom/android/mms/data/Conversation;

    .line 374
    new-instance v0, Lcom/android/mms/ui/ConversationList$6;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ConversationList$6;-><init>(Lcom/android/mms/ui/ConversationList;)V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationList;->mContentChangedListener:Lcom/android/mms/ui/ConversationListAdapter$OnContentChangedListener;

    .line 711
    new-instance v0, Lcom/android/mms/ui/ConversationList$10;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ConversationList$10;-><init>(Lcom/android/mms/ui/ConversationList;)V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationList;->onConversationListItemClick:Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemClickListener;

    .line 797
    new-instance v0, Lcom/android/mms/ui/ConversationList$11;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ConversationList$11;-><init>(Lcom/android/mms/ui/ConversationList;)V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationList;->mConvListOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    .line 967
    new-instance v0, Lcom/android/mms/ui/ConversationList$13;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ConversationList$13;-><init>(Lcom/android/mms/ui/ConversationList;)V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationList;->mThreadListKeyListener:Landroid/view/View$OnKeyListener;

    .line 1042
    new-instance v0, Lcom/android/mms/ui/ConversationList$14;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ConversationList$14;-><init>(Lcom/android/mms/ui/ConversationList;)V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationList;->mNewComposeKeyListener:Landroid/view/View$OnKeyListener;

    .line 88
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/ConversationList;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationList;->createNewMessage()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/mms/ui/ConversationList;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/mms/ui/ConversationList;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationList;->markCheckedMessageLimit()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/mms/ui/ConversationList;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ConversationList;->startAsyncQueryInternal(Z)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/mms/ui/ConversationList;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationList;->mIsDeleteMode:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/android/mms/ui/ConversationList;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/ConversationList;->openThread(J)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/mms/ui/ConversationList;)Lcom/sec/android/touchwiz/widget/TwListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/android/mms/ui/ConversationList;Lcom/android/mms/data/Conversation;)Lcom/android/mms/data/Conversation;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput-object p1, p0, Lcom/android/mms/ui/ConversationList;->mContextMenuSelectedConversation:Lcom/android/mms/data/Conversation;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/android/mms/ui/ConversationList;)Lcom/sec/android/touchwiz/widget/TwListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationList;->getListView()Lcom/sec/android/touchwiz/widget/TwListView;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/mms/ui/ConversationList;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget v0, p0, Lcom/android/mms/ui/ConversationList;->mCountToDelete:I

    return v0
.end method

.method static synthetic access$1702(Lcom/android/mms/ui/ConversationList;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput p1, p0, Lcom/android/mms/ui/ConversationList;->mCountToDelete:I

    return p1
.end method

.method static synthetic access$1800(Lcom/android/mms/ui/ConversationList;)Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mQueryHandler:Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/mms/ui/ConversationList;)Lcom/android/mms/ui/ConversationListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/mms/ui/ConversationList;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 83
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/ConversationList;->updateEmptyScreen(IZ)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/mms/ui/ConversationList;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/ConversationList;->startAsyncQueryDelayed(J)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/mms/ui/ConversationList;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ConversationList;->setTotalQuantityTextView(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/mms/ui/ConversationList;)Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mSoftkeyLeft:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    return-object v0
.end method

.method static synthetic access$3000()Z
    .locals 1

    .prologue
    .line 83
    sget-boolean v0, Lcom/android/mms/ui/ConversationList;->deleteComplete:Z

    return v0
.end method

.method static synthetic access$3002(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 83
    sput-boolean p0, Lcom/android/mms/ui/ConversationList;->deleteComplete:Z

    return p0
.end method

.method static synthetic access$3100(Lcom/android/mms/ui/ConversationList;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationList;->isFirstItemChanged()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3200(Lcom/android/mms/ui/ConversationList;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget v0, p0, Lcom/android/mms/ui/ConversationList;->mVisibleOffset:I

    return v0
.end method

.method static synthetic access$3300(Lcom/android/mms/ui/ConversationList;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationList;->restoreListOffset()V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/mms/ui/ConversationList;)Landroid/content/DialogInterface;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    return-object v0
.end method

.method static synthetic access$3402(Lcom/android/mms/ui/ConversationList;Landroid/content/DialogInterface;)Landroid/content/DialogInterface;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput-object p1, p0, Lcom/android/mms/ui/ConversationList;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    return-object p1
.end method

.method static synthetic access$3500(Lcom/android/mms/ui/ConversationList;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationList;->notifyDeleteStart()V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/mms/ui/ConversationList;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationList;->getDeleteEventHandler()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/mms/ui/ConversationList;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationList;->deleteSelectedConversations()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/mms/ui/ConversationList;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationList;->startAsyncQuery()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/mms/ui/ConversationList;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/mms/ui/ConversationList;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ConversationList;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/mms/ui/ConversationList;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/mms/ui/ConversationList;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mPrefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method private beforeQuery()V
    .locals 2

    .prologue
    .line 570
    const-string v0, "Mms/ConversationList"

    const-string v1, "beforeQuery()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    const v0, 0x7f08002c

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 574
    return-void
.end method

.method public static confirmDeleteThread(JLandroid/content/AsyncQueryHandler;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 919
    const-string v0, "Mms/ConversationList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "confirmDeleteThread(),threadId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 920
    const/16 v0, 0x70b

    invoke-static {p2, p0, p1, v0}, Lcom/android/mms/data/Conversation;->startQueryHaveLockedMessages(Landroid/content/AsyncQueryHandler;JI)V

    .line 921
    return-void
.end method

.method public static confirmDeleteThreadDialog(Lcom/android/mms/ui/ConversationList$DeleteThreadListener;ZZLandroid/content/Context;I)Landroid/app/AlertDialog;
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 936
    const-string v0, "Mms/ConversationList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "confirmDeleteThreadDialog(),deleteAll="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",hasLockedMessages="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",resourceId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 939
    const v0, 0x7f03000c

    invoke-static {p3, v0, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 940
    const v0, 0x7f080042

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 941
    const v1, 0x7f080041

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 942
    invoke-virtual {v1, p4}, Landroid/widget/TextView;->setText(I)V

    .line 944
    invoke-virtual {p0, p2}, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->setHasLockedMessage(Z)V

    .line 945
    if-nez p2, :cond_0

    .line 946
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 957
    :goto_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 958
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

    .line 948
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 949
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->setDeleteLockedMessage(Z)V

    .line 950
    new-instance v1, Lcom/android/mms/ui/ConversationList$12;

    invoke-direct {v1, p0, v0}, Lcom/android/mms/ui/ConversationList$12;-><init>(Lcom/android/mms/ui/ConversationList$DeleteThreadListener;Landroid/widget/CheckBox;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 958
    :cond_1
    const v1, 0x7f09008f

    goto :goto_1
.end method

.method public static createAddContactIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .parameter

    .prologue
    .line 782
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT_OR_EDIT"

    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 784
    invoke-static {p0}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 785
    const-string v1, "email"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 791
    :goto_0
    const-string v1, "vnd.android.cursor.item/raw_contact"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 793
    return-object v0

    .line 787
    :cond_0
    const-string v1, "phone"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 788
    const-string v1, "phone_type"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0
.end method

.method private createNewMessage()V
    .locals 2

    .prologue
    .line 743
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/ConversationList;->openThread(J)V

    .line 744
    return-void
.end method

.method private deleteSelectedConversations()V
    .locals 3

    .prologue
    .line 1609
    const-string v0, "Mms/ConversationList"

    const-string v1, "deleteSelectedConversations()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1611
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationListAdapter;->getCheckedCount()I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/ConversationList;->mCountToDelete:I

    .line 1612
    iget v0, p0, Lcom/android/mms/ui/ConversationList;->mCountToDelete:I

    iget-object v1, p0, Lcom/android/mms/ui/ConversationList;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationListAdapter;->getCount()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 1613
    const-wide/16 v0, -0x1

    iget-object v2, p0, Lcom/android/mms/ui/ConversationList;->mQueryHandler:Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;

    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/ConversationList;->confirmDeleteThread(JLandroid/content/AsyncQueryHandler;)V

    .line 1618
    :goto_0
    return-void

    .line 1615
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mQueryHandler:Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;

    const/16 v1, 0x70d

    invoke-static {v0, v1}, Lcom/android/mms/data/Conversation;->startQueryHaveLockedThread(Landroid/content/AsyncQueryHandler;I)V

    goto :goto_0
.end method

.method private disableSweepHanlder(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)V
    .locals 1
    .parameter "listView"

    .prologue
    const/4 v0, 0x0

    .line 359
    invoke-virtual {p1, v0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setSweepActionBarCallback(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarCallback;)V

    .line 360
    invoke-virtual {p1, v0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setSweepActionListener(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;)V

    .line 361
    return-void
.end method

.method private static ensureUpdateDeletable()Z
    .locals 1

    .prologue
    .line 350
    const/4 v0, 0x0

    return v0
.end method

.method private getConversation(I)Lcom/android/mms/data/Conversation;
    .locals 4
    .parameter "position"

    .prologue
    .line 1488
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/mms/ui/ConversationList;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    invoke-virtual {v1, p1}, Lcom/sec/android/touchwiz/widget/TwListView;->getItemIdAtPosition(I)J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;JZ)Lcom/android/mms/data/Conversation;

    move-result-object v0

    return-object v0
.end method

.method private getDeleteEventHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mDeleteEventHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 322
    new-instance v0, Lcom/android/mms/ui/ConversationList$5;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ConversationList$5;-><init>(Lcom/android/mms/ui/ConversationList;)V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationList;->mDeleteEventHandler:Landroid/os/Handler;

    .line 338
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mDeleteEventHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private getListView()Lcom/sec/android/touchwiz/widget/TwListView;
    .locals 1

    .prologue
    .line 342
    const v0, 0x102000a

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationList;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/sec/android/touchwiz/widget/TwListView;

    return-object p0
.end method

.method private getProgressDialog()Landroid/app/ProgressDialog;
    .locals 4

    .prologue
    .line 1649
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mProgressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 1650
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mActivity:Landroid/app/Activity;

    const-string v1, ""

    iget-object v2, p0, Lcom/android/mms/ui/ConversationList;->mActivity:Landroid/app/Activity;

    const v3, 0x7f0901d1

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ConversationList;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 1654
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method private getQuantityText(III)Ljava/lang/String;
    .locals 5
    .parameter "count"
    .parameter "zeroResourceId"
    .parameter "pluralResourceId"

    .prologue
    .line 1196
    if-nez p1, :cond_0

    .line 1197
    iget-object v1, p0, Lcom/android/mms/ui/ConversationList;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1200
    :goto_0
    return-object v1

    .line 1199
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationList;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, p3, p1, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, str:Ljava/lang/String;
    move-object v1, v0

    .line 1200
    goto :goto_0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 346
    const-string v0, "Mms/ConversationList"

    const-string v1, "init()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    return-void
.end method

.method private initListAdapter()V
    .locals 3

    .prologue
    .line 382
    const-string v0, "Mms/ConversationList"

    const-string v1, "initListAdapter()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    new-instance v0, Lcom/android/mms/ui/ConversationListAdapter;

    iget-object v1, p0, Lcom/android/mms/ui/ConversationList;->mActivity:Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/mms/ui/ConversationListAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationList;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    .line 385
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    iget-object v1, p0, Lcom/android/mms/ui/ConversationList;->mContentChangedListener:Lcom/android/mms/ui/ConversationListAdapter$OnContentChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ConversationListAdapter;->setOnContentChangedListener(Lcom/android/mms/ui/ConversationListAdapter$OnContentChangedListener;)V

    .line 386
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    iget-object v1, p0, Lcom/android/mms/ui/ConversationList;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 387
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationList;->getListView()Lcom/sec/android/touchwiz/widget/TwListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ConversationList;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwListView;->setRecyclerListener(Lcom/sec/android/touchwiz/widget/TwAbsListView$RecyclerListener;)V

    .line 389
    return-void
.end method

.method private isFirstItemChanged()Z
    .locals 4

    .prologue
    .line 1215
    iget-object v2, p0, Lcom/android/mms/ui/ConversationList;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwListView;->getCount()I

    move-result v2

    iget-object v3, p0, Lcom/android/mms/ui/ConversationList;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwListView;->getHeaderViewsCount()I

    move-result v3

    sub-int/2addr v2, v3

    if-lez v2, :cond_0

    .line 1217
    iget-object v2, p0, Lcom/android/mms/ui/ConversationList;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    iget-object v3, p0, Lcom/android/mms/ui/ConversationList;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwListView;->getHeaderViewsCount()I

    move-result v3

    add-int/lit8 v3, v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/touchwiz/widget/TwListView;->getItemIdAtPosition(I)J

    move-result-wide v0

    .line 1218
    .local v0, newId:J
    iget-wide v2, p0, Lcom/android/mms/ui/ConversationList;->mFirstItemId:J

    cmp-long v2, v2, v0

    if-eqz v2, :cond_0

    .line 1219
    iput-wide v0, p0, Lcom/android/mms/ui/ConversationList;->mFirstItemId:J

    .line 1220
    const/4 v2, 0x1

    .line 1224
    .end local v0           #newId:J
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private markCheckedMessageLimit()V
    .locals 3

    .prologue
    .line 450
    iget-object v1, p0, Lcom/android/mms/ui/ConversationList;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 451
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "checked_message_limits"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 452
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 454
    const-string v1, "Mms/ConversationList"

    const-string v2, "markCheckedMessageLimit()"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    return-void
.end method

.method private notifyDeleteStart()V
    .locals 0

    .prologue
    .line 1635
    iget-object p0, p0, Lcom/android/mms/ui/ConversationList;->mActivity:Landroid/app/Activity;

    .end local p0
    check-cast p0, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->onConversationDeleteStart()V

    .line 1636
    return-void
.end method

.method private openThread(J)V
    .locals 3
    .parameter "threadId"

    .prologue
    .line 747
    iget-boolean v1, p0, Lcom/android/mms/ui/ConversationList;->mIsDeleteMode:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/ConversationList;->mActivity:Landroid/app/Activity;

    check-cast v1, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationComposer;->getSplitMode()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 757
    :goto_0
    return-void

    .line 751
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/ConversationList;->mActivity:Landroid/app/Activity;

    iget-boolean v2, p0, Lcom/android/mms/ui/ConversationList;->mIsDeleteMode:Z

    invoke-static {v1, p1, p2, v2}, Lcom/android/mms/ui/ComposeMessage;->createIntent(Landroid/content/Context;JZ)Landroid/content/Intent;

    move-result-object v0

    .line 752
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/mms/ui/ConversationList;->mActivity:Landroid/app/Activity;

    check-cast v1, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v1, v0}, Lcom/android/mms/ui/ConversationComposer;->openThread(Landroid/content/Intent;)V

    .line 755
    invoke-virtual {p0, p1, p2}, Lcom/android/mms/ui/ConversationList;->drawMessagePointer(J)V

    goto :goto_0
.end method

.method private refreshSplitMode()V
    .locals 2

    .prologue
    .line 903
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationComposer;->getSplitMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 904
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationListAdapter;->enableSplitMode()V

    .line 907
    :goto_0
    return-void

    .line 906
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationListAdapter;->disableSplitMode()V

    goto :goto_0
.end method

.method private restoreListOffset()V
    .locals 2

    .prologue
    .line 532
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    if-nez v0, :cond_0

    .line 534
    :goto_0
    return-void

    .line 533
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    iget v1, p0, Lcom/android/mms/ui/ConversationList;->mVisibleOffset:I

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwListView;->setSelection(I)V

    goto :goto_0
.end method

.method private saveListOffset()V
    .locals 1

    .prologue
    .line 526
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    if-nez v0, :cond_0

    .line 528
    :goto_0
    return-void

    .line 527
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwListView;->getFirstVisiblePosition()I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/ConversationList;->mVisibleOffset:I

    goto :goto_0
.end method

.method private setSweepHandler(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)V
    .locals 2
    .parameter "listView"

    .prologue
    .line 354
    new-instance v0, Lcom/android/mms/ui/SweepHandler;

    iget-object v1, p0, Lcom/android/mms/ui/ConversationList;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1, p0}, Lcom/android/mms/ui/SweepHandler;-><init>(Landroid/content/Context;Lcom/android/mms/ui/ConversationList;)V

    invoke-virtual {p1, v0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setSweepActionBarCallback(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarCallback;)V

    .line 355
    invoke-virtual {p1, p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setSweepActionListener(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;)V

    .line 356
    return-void
.end method

.method private setTotalQuantityTextView(I)V
    .locals 4
    .parameter

    .prologue
    .line 1205
    const v0, 0x7f090116

    const v1, 0x7f0a0002

    invoke-direct {p0, p1, v0, v1}, Lcom/android/mms/ui/ConversationList;->getQuantityText(III)Ljava/lang/String;

    move-result-object v0

    .line 1207
    iget-object v1, p0, Lcom/android/mms/ui/ConversationList;->mTotalConversations:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1209
    const-string v1, "Mms/ConversationList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setTotalQuantityTextView(),text="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1210
    return-void
.end method

.method public static showElapsed(JLandroid/content/Context;I)V
    .locals 6
    .parameter "elapsedNano"
    .parameter "context"
    .parameter "count"

    .prologue
    .line 213
    const-string v0, "Mms/ConversationList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "done loading "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "list items, elapsed : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    long-to-double v2, p0

    const-wide v4, 0x412e848000000000L

    div-double/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    return-void
.end method

.method private startActivity(Landroid/content/Intent;)V
    .locals 3
    .parameter

    .prologue
    .line 1557
    const-string v0, "Mms/ConversationList"

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

    .line 1558
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1559
    return-void
.end method

.method private startAsyncQuery()V
    .locals 1

    .prologue
    .line 605
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationList;->beforeQuery()V

    .line 606
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ConversationList;->startAsyncQueryInternal(Z)V

    .line 607
    return-void
.end method

.method private startAsyncQueryDelayed(J)V
    .locals 2
    .parameter "delay"

    .prologue
    .line 610
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/mms/ui/ConversationList$9;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ConversationList$9;-><init>(Lcom/android/mms/ui/ConversationList;)V

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 615
    return-void
.end method

.method private startAsyncQueryInternal(Z)V
    .locals 4
    .parameter "isFake"

    .prologue
    .line 625
    if-eqz p1, :cond_0

    .line 626
    :try_start_0
    iget-object v1, p0, Lcom/android/mms/ui/ConversationList;->mQueryHandler:Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;

    const/16 v2, 0x6a4

    const/16 v3, 0xb

    invoke-static {v1, v2, v3}, Lcom/android/mms/data/Conversation;->startQueryForFakeView(Landroid/content/AsyncQueryHandler;II)V

    .line 634
    :goto_0
    return-void

    .line 629
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/ConversationList;->mQueryHandler:Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;

    const/16 v2, 0x6a5

    invoke-static {v1, v2}, Lcom/android/mms/data/Conversation;->startQueryForAll(Landroid/content/AsyncQueryHandler;I)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 631
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 632
    .local v0, e:Landroid/database/sqlite/SQLiteException;
    iget-object v1, p0, Lcom/android/mms/ui/ConversationList;->mActivity:Landroid/app/Activity;

    invoke-static {v1, v0}, Landroid/database/sqlite/SqliteWrapper;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    goto :goto_0
.end method

.method private startFakeAsyncQuery()V
    .locals 1

    .prologue
    .line 599
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationList;->beforeQuery()V

    .line 600
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ConversationList;->startAsyncQueryInternal(Z)V

    .line 601
    return-void
.end method

.method private updateEmptyScreen(IZ)V
    .locals 7
    .parameter "resultCount"
    .parameter "handleFooter"

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 577
    const-string v2, "Mms/ConversationList"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateEmptyScreen(),resultCount="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationList;->getListView()Lcom/sec/android/touchwiz/widget/TwListView;

    move-result-object v1

    .line 579
    .local v1, listView:Landroid/view/View;
    const v2, 0x7f08002c

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/ConversationList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 582
    .local v0, emptyView:Landroid/view/View;
    if-nez p1, :cond_2

    .line 583
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 584
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 585
    if-eqz p2, :cond_0

    .line 586
    iget-object v2, p0, Lcom/android/mms/ui/ConversationList;->mTotalConversations:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 588
    :cond_0
    iget-boolean v2, p0, Lcom/android/mms/ui/ConversationList;->mIsDeleteMode:Z

    if-eqz v2, :cond_1

    .line 589
    invoke-virtual {p0, v5, v5}, Lcom/android/mms/ui/ConversationList;->setDeleteModeLayout(ZZ)V

    .line 596
    :cond_1
    :goto_0
    return-void

    .line 591
    :cond_2
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 592
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 593
    if-eqz p2, :cond_1

    .line 594
    iget-object v2, p0, Lcom/android/mms/ui/ConversationList;->mTotalConversations:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public FindThread(Landroid/database/Cursor;J)Landroid/database/Cursor;
    .locals 3
    .parameter "cursor"
    .parameter "threadId"

    .prologue
    .line 1659
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1661
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1663
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    cmp-long v1, v1, p2

    if-nez v1, :cond_0

    move-object v1, p1

    .line 1670
    :goto_1
    return-object v1

    .line 1667
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 1661
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1670
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public configurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter

    .prologue
    .line 896
    const-string v0, "Mms/ConversationList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configurationChanged(),newConfig="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 898
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationList;->refreshSplitMode()V

    .line 899
    return-void
.end method

.method public drawMessagePointer(J)V
    .locals 3
    .parameter "threadId"

    .prologue
    .line 761
    const-string v0, "Mms/ConversationList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "drawMessagePointer(),threadId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 764
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/android/mms/ui/ConversationListAdapter;->setListItemSelected(J)V

    .line 767
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationComposer;->getSplitMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 768
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwListView;->invalidateViews()V

    .line 770
    :cond_0
    return-void
.end method

.method public getConversationListAdapter()Lcom/android/mms/ui/ConversationListAdapter;
    .locals 1

    .prologue
    .line 775
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    return-object v0
.end method

.method public getNumber(I)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 1525
    const-string v0, "Mms/ConversationList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getNumber(),position="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1528
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ConversationList;->getConversation(I)Lcom/android/mms/data/Conversation;

    move-result-object v0

    .line 1529
    if-nez v0, :cond_0

    move-object v0, v3

    .line 1548
    :goto_0
    return-object v0

    .line 1532
    :cond_0
    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    .line 1533
    invoke-virtual {v0}, Lcom/android/mms/data/ContactList;->size()I

    move-result v1

    if-nez v1, :cond_1

    move-object v0, v3

    .line 1534
    goto :goto_0

    .line 1536
    :cond_1
    invoke-virtual {v0}, Lcom/android/mms/data/ContactList;->getNumbers()[Ljava/lang/String;

    move-result-object v0

    .line 1537
    array-length v1, v0

    if-nez v1, :cond_2

    move-object v0, v3

    .line 1538
    goto :goto_0

    .line 1541
    :cond_2
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Lcom/android/mms/ui/MessageUtils;->isValidSmsAddress(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1542
    const/4 v1, 0x0

    aget-object v0, v0, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1544
    :catch_0
    move-exception v0

    .line 1545
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    move-object v0, v3

    .line 1548
    goto :goto_0
.end method

.method public isConversationIndex(I)Z
    .locals 6
    .parameter "position"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 364
    if-gez p1, :cond_0

    move v3, v4

    .line 371
    :goto_0
    return v3

    .line 367
    :cond_0
    iget-object v3, p0, Lcom/android/mms/ui/ConversationList;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwListView;->getCount()I

    move-result v0

    .line 368
    .local v0, cnt:I
    iget-object v3, p0, Lcom/android/mms/ui/ConversationList;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwListView;->getHeaderViewsCount()I

    move-result v2

    .line 369
    .local v2, cntHeader:I
    iget-object v3, p0, Lcom/android/mms/ui/ConversationList;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwListView;->getFooterViewsCount()I

    move-result v1

    .line 371
    .local v1, cntFooter:I
    sub-int v3, v2, v5

    if-le p1, v3, :cond_1

    sub-int v3, v0, v1

    if-ge p1, v3, :cond_1

    move v3, v5

    goto :goto_0

    :cond_1
    move v3, v4

    goto :goto_0
.end method

.method public isDeleteMode()Z
    .locals 1

    .prologue
    .line 1605
    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationList;->mIsDeleteMode:Z

    return v0
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 843
    const-string v0, "Mms/ConversationList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onContextItemSelected(),itemId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 844
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterContextMenuInfo;

    .line 847
    iget-object v1, p0, Lcom/android/mms/ui/ConversationList;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v1, v0}, Lcom/sec/android/touchwiz/widget/TwListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    .line 848
    instance-of v1, v0, Landroid/database/Cursor;

    if-nez v1, :cond_1

    .line 883
    :cond_0
    :goto_0
    return-void

    .line 850
    :cond_1
    check-cast v0, Landroid/database/Cursor;

    .line 852
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    if-ltz v0, :cond_0

    .line 855
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mContextMenuSelectedConversation:Lcom/android/mms/data/Conversation;

    .line 856
    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v1

    .line 857
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 859
    :pswitch_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/mms/ui/ConversationList;->mCountToDelete:I

    .line 860
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mQueryHandler:Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;

    invoke-static {v1, v2, v0}, Lcom/android/mms/ui/ConversationList;->confirmDeleteThread(JLandroid/content/AsyncQueryHandler;)V

    goto :goto_0

    .line 864
    :pswitch_1
    invoke-direct {p0, v1, v2}, Lcom/android/mms/ui/ConversationList;->openThread(J)V

    goto :goto_0

    .line 868
    :pswitch_2
    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    .line 869
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 870
    const/high16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 871
    invoke-direct {p0, v1}, Lcom/android/mms/ui/ConversationList;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 875
    :pswitch_3
    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v0

    .line 876
    invoke-static {v0}, Lcom/android/mms/ui/ConversationList;->createAddContactIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ConversationList;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 857
    nop

    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;Landroid/content/Intent;)V
    .locals 6
    .parameter "savedInstanceState"
    .parameter "intent"

    .prologue
    const/4 v5, 0x0

    .line 217
    const-string v2, "Mms/ConversationList"

    const-string v3, " onCreate()"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sput-wide v2, Lcom/android/mms/ui/ConversationList;->createdAt:J

    .line 220
    sput v5, Lcom/android/mms/ui/ConversationList;->bindCount:I

    .line 222
    invoke-virtual {p0, p2}, Lcom/android/mms/ui/ConversationList;->setIntent(Landroid/content/Intent;)V

    .line 224
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationList;->removeAllViews()V

    .line 225
    iget-object v2, p0, Lcom/android/mms/ui/ConversationList;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 226
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v2, 0x7f03000b

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 232
    new-instance v2, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;

    iget-object v3, p0, Lcom/android/mms/ui/ConversationList;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;-><init>(Lcom/android/mms/ui/ConversationList;Landroid/content/ContentResolver;)V

    iput-object v2, p0, Lcom/android/mms/ui/ConversationList;->mQueryHandler:Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;

    .line 233
    iget-object v2, p0, Lcom/android/mms/ui/ConversationList;->mQueryHandler:Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;

    invoke-direct {p0}, Lcom/android/mms/ui/ConversationList;->getDeleteEventHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->setmDeleteEventHandler(Landroid/os/Handler;)V

    .line 235
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationList;->getListView()Lcom/sec/android/touchwiz/widget/TwListView;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/ConversationList;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    .line 238
    invoke-static {}, Lcom/android/mms/MmsConfig;->getSupportEmoji()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 239
    iget-object v2, p0, Lcom/android/mms/ui/ConversationList;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    invoke-virtual {v2, v5}, Lcom/sec/android/touchwiz/widget/TwListView;->setCacheColorHint(I)V

    .line 241
    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/ConversationList;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    check-cast v2, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-direct {p0, v2}, Lcom/android/mms/ui/ConversationList;->setSweepHandler(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)V

    .line 243
    const v2, 0x7f030008

    iget-object v3, p0, Lcom/android/mms/ui/ConversationList;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    invoke-virtual {v1, v2, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/mms/ui/ConversationList;->mTotalConversations:Landroid/widget/TextView;

    .line 244
    iget-object v2, p0, Lcom/android/mms/ui/ConversationList;->mTotalConversations:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/mms/ui/ConversationList;->mActivity:Landroid/app/Activity;

    const v4, 0x7f09000d

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 245
    iget-object v2, p0, Lcom/android/mms/ui/ConversationList;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    iget-object v3, p0, Lcom/android/mms/ui/ConversationList;->mTotalConversations:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/sec/android/touchwiz/widget/TwListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 248
    const v2, 0x7f080030

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/ConversationList;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/mms/ui/ConversationList;->mNewCompose:Landroid/widget/LinearLayout;

    .line 249
    iget-object v2, p0, Lcom/android/mms/ui/ConversationList;->mNewCompose:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/mms/ui/ConversationList;->onNewMessage:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 250
    iget-object v2, p0, Lcom/android/mms/ui/ConversationList;->mNewCompose:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/mms/ui/ConversationList;->mNewComposeKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 253
    invoke-static {}, Lcom/android/mms/ui/ConversationList;->ensureUpdateDeletable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 254
    invoke-static {}, Lcom/android/mms/data/Conversation;->updateDeletable()V

    .line 258
    :cond_1
    iget-object v2, p0, Lcom/android/mms/ui/ConversationList;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    iget-object v3, p0, Lcom/android/mms/ui/ConversationList;->mConvListOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    invoke-virtual {v2, v3}, Lcom/sec/android/touchwiz/widget/TwListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 259
    iget-object v2, p0, Lcom/android/mms/ui/ConversationList;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    iget-object v3, p0, Lcom/android/mms/ui/ConversationList;->mThreadListKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v2, v3}, Lcom/sec/android/touchwiz/widget/TwListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 260
    iget-object v2, p0, Lcom/android/mms/ui/ConversationList;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    iget-object v3, p0, Lcom/android/mms/ui/ConversationList;->onConversationListItemClick:Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemClickListener;

    invoke-virtual {v2, v3}, Lcom/sec/android/touchwiz/widget/TwListView;->setOnItemClickListener(Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemClickListener;)V

    .line 261
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationList;->initListAdapter()V

    .line 263
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/android/mms/ui/ConversationList;->mHandler:Landroid/os/Handler;

    .line 264
    iget-object v2, p0, Lcom/android/mms/ui/ConversationList;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/ConversationList;->mPrefs:Landroid/content/SharedPreferences;

    .line 265
    iget-object v2, p0, Lcom/android/mms/ui/ConversationList;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "checked_message_limits"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 267
    .local v0, checkedMessageLimits:Z
    if-nez v0, :cond_2

    .line 268
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationList;->runOneTimeStorageLimitCheckForLegacyMessages()V

    .line 271
    :cond_2
    const v2, 0x7f08003a

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/ConversationList;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/mms/ui/ConversationList;->mSelectAll:Landroid/widget/LinearLayout;

    .line 272
    iget-object v2, p0, Lcom/android/mms/ui/ConversationList;->mSelectAll:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/android/mms/ui/ConversationList$2;

    invoke-direct {v3, p0}, Lcom/android/mms/ui/ConversationList$2;-><init>(Lcom/android/mms/ui/ConversationList;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 297
    const v2, 0x7f08003b

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/ConversationList;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/android/mms/ui/ConversationList;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    .line 299
    invoke-static {}, Lcom/android/mms/ui/NullDialog;->getInstance()Lcom/android/mms/ui/NullDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/ConversationList;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    .line 300
    const v2, 0x7f08003d

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/ConversationList;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;

    iput-object v2, p0, Lcom/android/mms/ui/ConversationList;->mDeleteSoftkeyView:Lcom/sec/android/touchwiz/widget/TwSoftkeyView;

    .line 301
    const v2, 0x7f08002f

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/ConversationList;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/mms/ui/ConversationList;->mConversationHeader:Landroid/widget/LinearLayout;

    .line 302
    const v2, 0x7f080039

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/ConversationList;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/mms/ui/ConversationList;->mConversationTitle:Landroid/widget/LinearLayout;

    .line 304
    const v2, 0x7f08003c

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/ConversationList;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    iput-object v2, p0, Lcom/android/mms/ui/ConversationList;->mSoftkeyLeft:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    .line 305
    iget-object v2, p0, Lcom/android/mms/ui/ConversationList;->mSoftkeyLeft:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    new-instance v3, Lcom/android/mms/ui/ConversationList$3;

    invoke-direct {v3, p0}, Lcom/android/mms/ui/ConversationList$3;-><init>(Lcom/android/mms/ui/ConversationList;)V

    invoke-virtual {v2, v3}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 311
    const v2, 0x7f08003e

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/ConversationList;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    iput-object v2, p0, Lcom/android/mms/ui/ConversationList;->mSoftkeyRight:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    .line 312
    iget-object v2, p0, Lcom/android/mms/ui/ConversationList;->mSoftkeyRight:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    new-instance v3, Lcom/android/mms/ui/ConversationList$4;

    invoke-direct {v3, p0}, Lcom/android/mms/ui/ConversationList$4;-><init>(Lcom/android/mms/ui/ConversationList;)V

    invoke-virtual {v2, v3}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 317
    return-void
.end method

.method public onDeleteCompleted()V
    .locals 2

    .prologue
    .line 1639
    iget-object v1, p0, Lcom/android/mms/ui/ConversationList;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1646
    :cond_0
    :goto_0
    return-void

    .line 1642
    :cond_1
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationList;->getProgressDialog()Landroid/app/ProgressDialog;

    move-result-object v0

    .line 1643
    .local v0, dlg:Landroid/app/ProgressDialog;
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1644
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    goto :goto_0
.end method

.method public onDeleteStart()V
    .locals 2

    .prologue
    .line 1628
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationList;->getProgressDialog()Landroid/app/ProgressDialog;

    move-result-object v0

    .line 1629
    .local v0, dlg:Landroid/app/ProgressDialog;
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1630
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 1632
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 548
    const-string v0, "Mms/ConversationList"

    const-string v1, " onDestroy()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    invoke-static {}, Lcom/android/mms/ui/NullDialog;->getInstance()Lcom/android/mms/ui/NullDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ConversationList;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    .line 550
    return-void
.end method

.method public onDraftChanged(JZ)V
    .locals 2
    .parameter "threadId"
    .parameter "hasDraft"

    .prologue
    .line 553
    const-string v0, "Mms/ConversationList"

    const-string v1, "post onDraftChanged()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mQueryHandler:Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;

    new-instance v1, Lcom/android/mms/ui/ConversationList$8;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/mms/ui/ConversationList$8;-><init>(Lcom/android/mms/ui/ConversationList;JZ)V

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->post(Ljava/lang/Runnable;)Z

    .line 562
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    const-string v1, "Mms/ConversationList"

    .line 458
    const-string v0, "Mms/ConversationList"

    const-string v0, "\t onNewIntent()"

    invoke-static {v1, v0}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationList;->startAsyncQuery()V

    .line 462
    const-string v0, "Mms/ConversationList"

    const-string v0, "onNewIntent()"

    invoke-static {v1, v0}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 680
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 681
    const-string v1, "Mms/ConversationList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onOptionsItemSelected(),item="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 683
    packed-switch v0, :pswitch_data_0

    .line 708
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 689
    :pswitch_1
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->onSearchRequested()Z

    move v0, v4

    .line 690
    goto :goto_0

    .line 693
    :pswitch_2
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationComposer;->onConversationDeleteMode()V

    .line 694
    invoke-virtual {p0, v4, v4}, Lcom/android/mms/ui/ConversationList;->setDeleteModeLayout(ZZ)V

    move v0, v4

    .line 695
    goto :goto_0

    .line 697
    :pswitch_3
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/mms/ui/ConversationList;->mActivity:Landroid/app/Activity;

    const-class v2, Lcom/android/mms/ui/MessagingPreferenceActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 698
    invoke-direct {p0, v0}, Lcom/android/mms/ui/ConversationList;->startActivity(Landroid/content/Intent;)V

    move v0, v4

    .line 699
    goto :goto_0

    .line 702
    :pswitch_4
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 703
    const-string v1, "com.wsomacp"

    const-string v2, "com.wsomacp.WSSClientProvUiList"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 704
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 705
    invoke-direct {p0, v0}, Lcom/android/mms/ui/ConversationList;->startActivity(Landroid/content/Intent;)V

    move v0, v4

    .line 706
    goto :goto_0

    .line 683
    nop

    :pswitch_data_0
    .packed-switch 0xc9
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 9
    .parameter "menu"

    .prologue
    const/4 v8, 0x0

    .line 639
    const-string v0, "Mms/ConversationList"

    const-string v1, "onPrepareOptionsMenu()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationList;->isDeleteMode()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v8

    .line 675
    :goto_0
    return v0

    .line 647
    :cond_0
    const/4 v7, 0x0

    .line 649
    .local v7, cursor:Landroid/database/Cursor;
    :try_start_0
    const-string v0, "content://com.wsomacp.messagelist"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 650
    .local v2, cpUri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/mms/ui/ConversationList;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 653
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 654
    const/4 v0, 0x0

    const/16 v1, 0xcc

    const/4 v3, 0x0

    const v4, 0x7f090007

    invoke-interface {p1, v0, v1, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020068

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 658
    :cond_1
    if-eqz v7, :cond_2

    .line 659
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 662
    :cond_2
    const/16 v0, 0xc9

    const v1, 0x104000c

    invoke-interface {p1, v8, v0, v8, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x2020033

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v1, 0x73

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 666
    const/16 v0, 0xcd

    const v1, 0x7f090006

    invoke-interface {p1, v8, v0, v8, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x202002c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 670
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationListAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_3

    .line 671
    const/16 v0, 0xcb

    const v1, 0x7f09000a

    invoke-interface {p1, v8, v0, v8, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x2020014

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 675
    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    .line 658
    .end local v2           #cpUri:Landroid/net/Uri;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_4

    .line 659
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1492
    const-string v0, "Mms/ConversationList"

    const-string v1, "\t\t onResume()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 1494
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationList;->getListView()Lcom/sec/android/touchwiz/widget/TwListView;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    .line 1495
    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->closeAllActionBar(Z)Z

    .line 1499
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationListAdapter;->getCheckedCount()I

    move-result v0

    .line 1500
    if-lez v0, :cond_0

    const/4 v0, 0x1

    .line 1502
    :goto_0
    iget-object v1, p0, Lcom/android/mms/ui/ConversationList;->mSoftkeyLeft:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    invoke-virtual {v1, v0}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setEnabled(Z)V

    .line 1507
    return-void

    :cond_0
    move v0, v2

    .line 1500
    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 5
    .parameter "outState"

    .prologue
    const-string v4, "Mms/ConversationList"

    .line 505
    const-string v2, "Mms/ConversationList"

    const-string v2, "\t\t onSaveInstanceState()"

    invoke-static {v4, v2}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    :try_start_0
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationList;->saveListOffset()V

    .line 511
    iget-object v2, p0, Lcom/android/mms/ui/ConversationList;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwListView;->getHeaderViewsCount()I

    move-result v1

    .line 512
    .local v1, headerCount:I
    iget-object v2, p0, Lcom/android/mms/ui/ConversationList;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwListView;->getCount()I

    move-result v2

    sub-int/2addr v2, v1

    if-lez v2, :cond_0

    .line 513
    iget-object v2, p0, Lcom/android/mms/ui/ConversationList;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    add-int/lit8 v3, v1, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/touchwiz/widget/TwListView;->getItemIdAtPosition(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/mms/ui/ConversationList;->mFirstItemId:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 521
    .end local v1           #headerCount:I
    :goto_0
    const-string v2, "Mms/ConversationList"

    const-string v2, "onSaveInstanceState()"

    invoke-static {v4, v2}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    return-void

    .line 515
    .restart local v1       #headerCount:I
    :cond_0
    const-wide/16 v2, -0x1

    :try_start_1
    iput-wide v2, p0, Lcom/android/mms/ui/ConversationList;->mFirstItemId:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 517
    .end local v1           #headerCount:I
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 518
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 466
    const-string v0, "Mms/ConversationList"

    const-string v1, "\t onStart()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0xef

    invoke-static {v0, v1}, Lcom/android/mms/transaction/MessagingNotification;->cancelNotification(Landroid/content/Context;I)V

    .line 471
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x378

    invoke-static {v0, v1}, Lcom/android/mms/transaction/MessagingNotification;->cancelNotification(Landroid/content/Context;I)V

    .line 474
    invoke-static {}, Lcom/android/mms/util/DraftCache;->getInstance()Lcom/android/mms/util/DraftCache;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/mms/util/DraftCache;->addOnDraftChangedListener(Lcom/android/mms/util/DraftCache$OnDraftChangedListener;)V

    .line 476
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationList;->refreshSplitMode()V

    .line 478
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationList;->startFakeAsyncQuery()V

    .line 493
    invoke-static {}, Lcom/android/mms/data/Conversation;->loadingThreads()Z

    move-result v0

    if-nez v0, :cond_0

    .line 494
    invoke-static {}, Lcom/android/mms/data/Contact;->invalidateCache()V

    .line 498
    :cond_0
    sget-boolean v0, Lcom/android/mms/util/DraftCache;->isInvalidDraft:Z

    if-eqz v0, :cond_1

    .line 499
    invoke-static {}, Lcom/android/mms/util/DraftCache;->getInstance()Lcom/android/mms/util/DraftCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/util/DraftCache;->refresh()V

    .line 502
    :cond_1
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 537
    const-string v0, "Mms/ConversationList"

    const-string v1, "\t onStop()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    invoke-static {}, Lcom/android/mms/util/DraftCache;->getInstance()Lcom/android/mms/util/DraftCache;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/mms/util/DraftCache;->removeOnDraftChangedListener(Lcom/android/mms/util/DraftCache$OnDraftChangedListener;)V

    .line 542
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    invoke-interface {v0}, Landroid/content/DialogInterface;->dismiss()V

    .line 544
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ConversationListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 545
    return-void
.end method

.method public onSweepActionCanceled(I)V
    .locals 3
    .parameter

    .prologue
    .line 1447
    const-string v0, "Mms/ConversationList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSweepActionCanceled(),itemIndex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1448
    return-void
.end method

.method public onSweepActionFired(II)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const-string v3, "Mms/ConversationList"

    .line 1451
    const-string v0, "Mms/ConversationList"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSweepActionFired(),itemIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",flickDirection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1454
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    .line 1457
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ConversationList;->getConversation(I)Lcom/android/mms/data/Conversation;

    move-result-object v1

    .line 1459
    if-nez v1, :cond_0

    .line 1460
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->closeAllActionBar(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1485
    :goto_0
    return-void

    .line 1463
    :catch_0
    move-exception v1

    .line 1464
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1465
    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->closeAllActionBar(Z)Z

    goto :goto_0

    .line 1469
    :cond_0
    if-nez p2, :cond_2

    .line 1470
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/ConversationList;->getNumber(I)Ljava/lang/String;

    move-result-object v1

    .line 1472
    if-nez v1, :cond_1

    .line 1473
    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->closeAllActionBar(Z)Z

    goto :goto_0

    .line 1475
    :cond_1
    const-string v0, "Mms/ConversationList"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSweepActionFired calling(),itemIndex="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",number="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1477
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mActivity:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/android/mms/ui/MessageUtils;->makeCall(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 1479
    :cond_2
    if-ne v2, p2, :cond_3

    .line 1480
    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lcom/android/mms/ui/ConversationList;->openThread(J)V

    .line 1481
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->closeAllActionBar(Z)Z

    goto :goto_0

    .line 1483
    :cond_3
    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->closeAllActionBar(Z)Z

    goto :goto_0
.end method

.method public onSweepActionStarted(I)V
    .locals 3
    .parameter

    .prologue
    .line 1521
    const-string v0, "Mms/ConversationList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSweepActionStarted(),itemIndex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1522
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .parameter "hasFocus"

    .prologue
    .line 1695
    if-nez p1, :cond_1

    .line 1697
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationList;->isDeleteMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1698
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mSoftkeyLeft:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1699
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mSoftkeyLeft:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->clearFocus()V

    .line 1700
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mSoftkeyRight:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1701
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mSoftkeyRight:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->clearFocus()V

    .line 1705
    :cond_1
    return-void
.end method

.method public requestDrawPointerOnConverationList(J)Z
    .locals 2
    .parameter "threadId"

    .prologue
    .line 1686
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    .line 1687
    const/4 v0, 0x0

    .line 1690
    :goto_0
    return v0

    .line 1689
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/android/mms/ui/ConversationListAdapter;->setListItemSelected(J)V

    .line 1690
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public requestFocusOnConversationList(J)Z
    .locals 3
    .parameter "threadId"

    .prologue
    .line 1674
    iget-object v1, p0, Lcom/android/mms/ui/ConversationList;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    invoke-virtual {p0, v1, p1, p2}, Lcom/android/mms/ui/ConversationList;->FindThread(Landroid/database/Cursor;J)Landroid/database/Cursor;

    move-result-object v0

    .line 1676
    .local v0, cursor:Landroid/database/Cursor;
    if-nez v0, :cond_0

    .line 1677
    const/4 v1, 0x0

    .line 1681
    :goto_0
    return v1

    .line 1679
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/ConversationList;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    invoke-interface {v0}, Landroid/database/Cursor;->getPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwListView;->setSelection(I)V

    .line 1681
    iget-object v1, p0, Lcom/android/mms/ui/ConversationList;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwListView;->requestFocus()Z

    move-result v1

    goto :goto_0
.end method

.method public declared-synchronized runOneTimeStorageLimitCheckForLegacyMessages()V
    .locals 4

    .prologue
    .line 398
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/mms/ui/ConversationList;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/android/mms/util/Recycler;->isAutoDeleteEnabled(Landroid/content/Context;)Z

    move-result v0

    .line 399
    .local v0, autoDeleteEnabled:Z
    const-string v1, "Mms/ConversationList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "runOneTimeStorageLimitCheckForLegacyMessages(),autoDeleteEnabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    if-eqz v0, :cond_0

    .line 405
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationList;->markCheckedMessageLimit()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 442
    :goto_0
    monitor-exit p0

    return-void

    .line 408
    :cond_0
    :try_start_1
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/mms/ui/ConversationList$7;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/ConversationList$7;-><init>(Lcom/android/mms/ui/ConversationList;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 398
    .end local v0           #autoDeleteEnabled:Z
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 91
    iput-object p1, p0, Lcom/android/mms/ui/ConversationList;->mActivity:Landroid/app/Activity;

    .line 92
    return-void
.end method

.method public setDeleteModeLayout(ZZ)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 1564
    const-string v0, "Mms/ConversationList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDeleteModeLayout(),isDeleteMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",requestLayout="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1566
    iput-boolean p1, p0, Lcom/android/mms/ui/ConversationList;->mIsDeleteMode:Z

    .line 1568
    if-eqz p1, :cond_1

    .line 1569
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mSelectAll:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1570
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1571
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mDeleteSoftkeyView:Lcom/sec/android/touchwiz/widget/TwSoftkeyView;

    invoke-virtual {v0, v3}, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;->setVisibility(I)V

    .line 1572
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mConversationHeader:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1573
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mConversationTitle:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1575
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mSoftkeyLeft:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    invoke-virtual {v0, v5}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setFocusable(Z)V

    .line 1576
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mSoftkeyRight:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    invoke-virtual {v0, v5}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setFocusable(Z)V

    .line 1578
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mSoftkeyLeft:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    invoke-virtual {v0, v3}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setEnabled(Z)V

    .line 1579
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 1580
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ConversationList;->disableSweepHanlder(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)V

    .line 1599
    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    iget-boolean v1, p0, Lcom/android/mms/ui/ConversationList;->mIsDeleteMode:Z

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ConversationListAdapter;->setDeleteMode(Z)V

    .line 1600
    if-eqz p2, :cond_0

    .line 1601
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwListView;->requestLayout()V

    .line 1602
    :cond_0
    return-void

    .line 1582
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mSelectAll:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1583
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mDeleteSoftkeyView:Lcom/sec/android/touchwiz/widget/TwSoftkeyView;

    invoke-virtual {v0, v4}, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;->setVisibility(I)V

    .line 1584
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mConversationHeader:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1585
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mConversationTitle:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1587
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mSoftkeyLeft:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    invoke-virtual {v0, v3}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setFocusable(Z)V

    .line 1588
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mSoftkeyRight:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    invoke-virtual {v0, v3}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setFocusable(Z)V

    .line 1590
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    iget-object v1, p0, Lcom/android/mms/ui/ConversationList;->mConvListOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 1591
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ConversationList;->setSweepHandler(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)V

    .line 1594
    const-string v0, "xAx"

    const-string v1, "-- ::: resetDecorInit --"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1595
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->resetDecorInit()V

    goto :goto_0
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 1553
    return-void
.end method

.method public setSelectAll(Z)V
    .locals 1
    .parameter "checked"

    .prologue
    .line 1621
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1622
    return-void
.end method
