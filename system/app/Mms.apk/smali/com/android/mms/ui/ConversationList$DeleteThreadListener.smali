.class public Lcom/android/mms/ui/ConversationList$DeleteThreadListener;
.super Ljava/lang/Object;
.source "ConversationList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ConversationList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeleteThreadListener"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDeleteDraftMessages:Z

.field private mDeleteLockedMessages:Z

.field private mDeleteStartHandler:Landroid/os/Handler;

.field private final mHandler:Landroid/content/AsyncQueryHandler;

.field private mHasLockedMessages:Z

.field private final mThreadId:J

.field private final mThreadIdList:[Ljava/lang/Long;


# direct methods
.method public constructor <init>(JLandroid/content/AsyncQueryHandler;Landroid/content/Context;[Ljava/lang/Long;)V
    .locals 2
    .parameter "threadId"
    .parameter "handler"
    .parameter "context"
    .parameter "threadIdList"

    .prologue
    const/4 v1, 0x0

    .line 1085
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1086
    iput-wide p1, p0, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->mThreadId:J

    .line 1087
    iput-object p3, p0, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->mHandler:Landroid/content/AsyncQueryHandler;

    .line 1088
    iput-object p4, p0, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->mContext:Landroid/content/Context;

    .line 1090
    if-eqz p5, :cond_0

    .line 1091
    invoke-virtual {p5}, [Ljava/lang/Long;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Long;

    check-cast v0, [Ljava/lang/Long;

    iput-object v0, p0, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->mThreadIdList:[Ljava/lang/Long;

    .line 1096
    :goto_0
    sput-boolean v1, Lcom/android/mms/ui/ConversationList;->mIsEmptyThread:Z

    .line 1097
    iput-boolean v1, p0, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->mDeleteLockedMessages:Z

    .line 1098
    iput-boolean v1, p0, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->mHasLockedMessages:Z

    .line 1100
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->mDeleteDraftMessages:Z

    .line 1101
    return-void

    .line 1093
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->mThreadIdList:[Ljava/lang/Long;

    goto :goto_0
.end method

.method static synthetic access$1900(Lcom/android/mms/ui/ConversationList$DeleteThreadListener;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 1071
    iget-wide v0, p0, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->mThreadId:J

    return-wide v0
.end method

.method static synthetic access$2000(Lcom/android/mms/ui/ConversationList$DeleteThreadListener;)[Ljava/lang/Long;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1071
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->mThreadIdList:[Ljava/lang/Long;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/mms/ui/ConversationList$DeleteThreadListener;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1071
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->mDeleteStartHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/mms/ui/ConversationList$DeleteThreadListener;)Landroid/content/AsyncQueryHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1071
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->mHandler:Landroid/content/AsyncQueryHandler;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/mms/ui/ConversationList$DeleteThreadListener;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 1071
    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->mDeleteLockedMessages:Z

    return v0
.end method

.method static synthetic access$2400(Lcom/android/mms/ui/ConversationList$DeleteThreadListener;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 1071
    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->mHasLockedMessages:Z

    return v0
.end method

.method static synthetic access$2500(Lcom/android/mms/ui/ConversationList$DeleteThreadListener;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 1071
    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->mDeleteDraftMessages:Z

    return v0
.end method

.method static synthetic access$2600(Lcom/android/mms/ui/ConversationList$DeleteThreadListener;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1071
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 1126
    const-string v1, "Mms/ConversationList.DeleteThreadListener"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onClick(),whichButton="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1128
    new-instance v0, Lcom/android/mms/ui/ConversationList$DeleteThreadListener$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ConversationList$DeleteThreadListener$1;-><init>(Lcom/android/mms/ui/ConversationList$DeleteThreadListener;)V

    .line 1188
    .local v0, deleteRun:Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->mContext:Landroid/content/Context;

    iget-wide v2, p0, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->mThreadId:J

    const/16 v4, 0x81

    invoke-static {v1, v2, v3, v4, v0}, Lcom/android/mms/ui/MessageUtils;->handleReadReport(Landroid/content/Context;JILjava/lang/Runnable;)V

    .line 1191
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1192
    return-void
.end method

.method public setDeleteDraftMessage(Z)Lcom/android/mms/ui/ConversationList$DeleteThreadListener;
    .locals 0
    .parameter "deleteDraftMessages"

    .prologue
    .line 1105
    iput-boolean p1, p0, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->mDeleteDraftMessages:Z

    .line 1106
    return-object p0
.end method

.method public setDeleteLockedMessage(Z)V
    .locals 0
    .parameter "deleteLockedMessages"

    .prologue
    .line 1112
    iput-boolean p1, p0, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->mDeleteLockedMessages:Z

    .line 1113
    return-void
.end method

.method public setDeleteStartHandler(Landroid/os/Handler;)Lcom/android/mms/ui/ConversationList$DeleteThreadListener;
    .locals 0
    .parameter "handler"

    .prologue
    .line 1117
    iput-object p1, p0, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->mDeleteStartHandler:Landroid/os/Handler;

    .line 1118
    return-object p0
.end method

.method public setHasLockedMessage(Z)V
    .locals 0
    .parameter "hasLockedMessages"

    .prologue
    .line 1122
    iput-boolean p1, p0, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->mHasLockedMessages:Z

    .line 1123
    return-void
.end method
