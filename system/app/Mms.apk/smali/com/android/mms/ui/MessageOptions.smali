.class public Lcom/android/mms/ui/MessageOptions;
.super Ljava/lang/Object;
.source "MessageOptions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/MessageOptions$ErrorReasonDisplayer;,
        Lcom/android/mms/ui/MessageOptions$RawAttachmentsExportThread;,
        Lcom/android/mms/ui/MessageOptions$AttachCancelListener;,
        Lcom/android/mms/ui/MessageOptions$AttachOkListener;,
        Lcom/android/mms/ui/MessageOptions$PduBodyCache;,
        Lcom/android/mms/ui/MessageOptions$BackgroundQueryHandler;,
        Lcom/android/mms/ui/MessageOptions$DeleteMessageListener;,
        Lcom/android/mms/ui/MessageOptions$CreationOkListener;,
        Lcom/android/mms/ui/MessageOptions$ResendGroupSmsListener;
    }
.end annotation


# static fields
.field private static final STORE_DIR:Ljava/lang/String;

.field public static isSipVisible:Z

.field private static mRenameDialog:Landroid/app/AlertDialog;

.field static saveMode:Z


# instance fields
.field private attachMsgId:J

.field private attachmentFiles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mBackgroundQueryHandler:Lcom/android/mms/ui/MessageOptions$BackgroundQueryHandler;

.field mContentResolver:Landroid/content/ContentResolver;

.field mContext:Landroid/content/Context;

.field private mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field mMsgItem:Lcom/android/mms/ui/MessageItem;

.field private mRawAttachmentHandler:Landroid/os/Handler;

.field mType:Ljava/lang/String;

.field msgId:J

.field mthisContext:Landroid/content/Context;

.field private rawAttachments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/model/AttachmentModel;",
            ">;"
        }
    .end annotation
.end field

.field private replaceFileMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const-string v3, "/"

    .line 139
    sput-boolean v2, Lcom/android/mms/ui/MessageOptions;->isSipVisible:Z

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/MessageOptions;->STORE_DIR:Ljava/lang/String;

    .line 1247
    sput-boolean v2, Lcom/android/mms/ui/MessageOptions;->saveMode:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/content/Context;Lcom/android/mms/ui/MessageItem;JLjava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "thisContext"
    .parameter "msgItem"
    .parameter "messageId"
    .parameter "type"

    .prologue
    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/MessageOptions;->attachmentFiles:Ljava/util/ArrayList;

    .line 135
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/MessageOptions;->rawAttachments:Ljava/util/ArrayList;

    .line 136
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/MessageOptions;->replaceFileMap:Ljava/util/HashMap;

    .line 137
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/mms/ui/MessageOptions;->attachMsgId:J

    .line 1502
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mRawAttachmentHandler:Landroid/os/Handler;

    .line 154
    iput-object p1, p0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    .line 155
    iput-object p2, p0, Lcom/android/mms/ui/MessageOptions;->mthisContext:Landroid/content/Context;

    .line 156
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mContentResolver:Landroid/content/ContentResolver;

    .line 157
    iput-wide p4, p0, Lcom/android/mms/ui/MessageOptions;->msgId:J

    .line 158
    iput-object p6, p0, Lcom/android/mms/ui/MessageOptions;->mType:Ljava/lang/String;

    .line 159
    iput-object p3, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    .line 161
    new-instance v0, Lcom/android/mms/ui/MessageOptions$BackgroundQueryHandler;

    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions;->mContentResolver:Landroid/content/ContentResolver;

    invoke-direct {v0, p0, v1}, Lcom/android/mms/ui/MessageOptions$BackgroundQueryHandler;-><init>(Lcom/android/mms/ui/MessageOptions;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mBackgroundQueryHandler:Lcom/android/mms/ui/MessageOptions$BackgroundQueryHandler;

    .line 162
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/MessageOptions;Lcom/android/mms/ui/MessageItem;[Ljava/lang/String;Lcom/android/mms/data/Conversation;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 106
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/ui/MessageOptions;->resendGroupSmsMessageItem(Lcom/android/mms/ui/MessageItem;[Ljava/lang/String;Lcom/android/mms/data/Conversation;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/mms/ui/MessageOptions;Lcom/android/mms/ui/MessageItem;Lcom/google/android/mms/pdu/SendReq;Ljava/lang/String;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 106
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/mms/ui/MessageOptions;->forwardMessageStartActivityForMms(Lcom/android/mms/ui/MessageItem;Lcom/google/android/mms/pdu/SendReq;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$1000()Landroid/app/AlertDialog;
    .locals 1

    .prologue
    .line 106
    sget-object v0, Lcom/android/mms/ui/MessageOptions;->mRenameDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$1002(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"

    .prologue
    .line 106
    sput-object p0, Lcom/android/mms/ui/MessageOptions;->mRenameDialog:Landroid/app/AlertDialog;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/android/mms/ui/MessageOptions;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/mms/ui/MessageOptions;JLcom/android/mms/model/AttachmentModel;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 106
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/ui/MessageOptions;->copyMedia(JLcom/android/mms/model/AttachmentModel;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/android/mms/ui/MessageOptions;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mRawAttachmentHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    sget-object v0, Lcom/android/mms/ui/MessageOptions;->STORE_DIR:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/mms/ui/MessageOptions;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->rawAttachments:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/mms/ui/MessageOptions;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->attachmentFiles:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/mms/ui/MessageOptions;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 106
    iget-wide v0, p0, Lcom/android/mms/ui/MessageOptions;->attachMsgId:J

    return-wide v0
.end method

.method static synthetic access$700(Lcom/android/mms/ui/MessageOptions;Ljava/util/ArrayList;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 106
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/ui/MessageOptions;->startExportRawAttachments(Ljava/util/ArrayList;J)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/mms/ui/MessageOptions;Landroid/content/Context;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageOptions;->startCheckFileName(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/mms/ui/MessageOptions;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->replaceFileMap:Ljava/util/HashMap;

    return-object v0
.end method

.method private checkCRForRawAttachment()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/mms/ContentRestrictionException;
        }
    .end annotation

    .prologue
    .line 747
    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mthisContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/model/CarrierContentRestriction;->getMmsCreationMode(Landroid/content/Context;)I

    move-result v0

    .line 749
    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    if-nez v0, :cond_1

    .line 751
    :cond_0
    new-instance v0, Lcom/android/mms/ContentRestrictionException;

    const-string v1, "Raw Attachment"

    invoke-direct {v0, v1}, Lcom/android/mms/ContentRestrictionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 753
    :cond_1
    return-void
.end method

.method private confirmDeleteDialog(Landroid/content/DialogInterface$OnClickListener;Z)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 756
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions;->mthisContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 757
    const v1, 0x7f09008f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 758
    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 759
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 760
    if-eqz p2, :cond_0

    const v1, 0x7f090092

    :goto_0
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 762
    const v1, 0x104000a

    invoke-virtual {v0, v1, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 763
    const/high16 v1, 0x104

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 764
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 765
    return-void

    .line 760
    :cond_0
    const v1, 0x7f090091

    goto :goto_0
.end method

.method private copyMedia(JLcom/android/mms/model/AttachmentModel;)Z
    .locals 9
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const-string v8, "Mms/MessageOptions"

    .line 1529
    const-string v0, "Mms/MessageOptions"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "copyMedia(),msgId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1530
    const/4 v0, 0x1

    .line 1531
    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions;->mthisContext:Landroid/content/Context;

    sget-object v2, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/ui/MessageOptions$PduBodyCache;->getPduBody(Landroid/content/Context;Landroid/net/Uri;)Lcom/google/android/mms/pdu/PduBody;

    move-result-object v1

    .line 1533
    if-nez v1, :cond_0

    move v0, v7

    .line 1555
    :goto_0
    return v0

    .line 1538
    :cond_0
    :try_start_0
    invoke-virtual {v1}, Lcom/google/android/mms/pdu/PduBody;->getPartsNum()I

    move-result v2

    move v3, v0

    move v0, v7

    .line 1539
    :goto_1
    if-ge v0, v2, :cond_3

    .line 1540
    invoke-virtual {v1, v0}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v4

    .line 1541
    new-instance v5, Ljava/lang/String;

    invoke-virtual {v4}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    .line 1542
    const-string v6, "text/plain"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "application/smil"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1543
    invoke-virtual {p3}, Lcom/android/mms/model/AttachmentModel;->getUri()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1544
    invoke-static {p1, p2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/android/mms/ui/MessageOptions;->copyPart(Lcom/google/android/mms/pdu/PduPart;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    and-int/2addr v3, v4

    .line 1539
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1548
    :catch_0
    move-exception v0

    .line 1549
    const-string v1, "Mms/MessageOptions"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "copyMedia : is failed. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1550
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1551
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    move v0, v7

    .line 1553
    goto :goto_0

    :cond_3
    move v0, v3

    .line 1555
    goto :goto_0
.end method

.method private copyPart(Lcom/google/android/mms/pdu/PduPart;Ljava/lang/String;)Z
    .locals 16
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1559
    const-string v2, "Mms/MessageOptions"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "copyPart(),fallback"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1561
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v2

    .line 1563
    const/4 v3, 0x0

    .line 1564
    const/4 v11, 0x0

    .line 1565
    const/4 v12, 0x0

    .line 1567
    const/4 v13, 0x1

    .line 1570
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mContentResolver:Landroid/content/ContentResolver;

    move-object v4, v0

    invoke-virtual {v4, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_a

    move-result-object v10

    .line 1571
    :try_start_1
    instance-of v2, v10, Ljava/io/FileInputStream;

    if-eqz v2, :cond_1f

    .line 1572
    move-object v0, v10

    check-cast v0, Ljava/io/FileInputStream;

    move-object v9, v0

    .line 1574
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduPart;->getContentLocation()[B

    move-result-object v2

    .line 1575
    if-nez v2, :cond_0

    .line 1576
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduPart;->getFilename()[B

    move-result-object v2

    .line 1578
    :cond_0
    if-nez v2, :cond_1

    .line 1579
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduPart;->getName()[B

    move-result-object v2

    .line 1583
    :cond_1
    if-nez v2, :cond_c

    move-object/from16 v2, p2

    .line 1588
    :goto_0
    const/4 v3, 0x1

    const-string v4, "<"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-ne v3, v4, :cond_2

    .line 1589
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 1591
    :cond_2
    const/4 v3, 0x1

    const-string v4, ">"

    invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-ne v3, v4, :cond_3

    .line 1592
    const/4 v3, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1594
    :cond_3
    const-string v3, "cid:"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1595
    const-string v3, "cid:"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 1598
    :cond_4
    new-instance v14, Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v3

    invoke-direct {v14, v3}, Ljava/lang/String;-><init>([B)V

    .line 1599
    invoke-static {v14}, Lcom/google/android/mms/ContentType;->isDrmType(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1601
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v4

    .line 1602
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mthisContext:Landroid/content/Context;

    move-object v2, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mthisContext:Landroid/content/Context;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    .line 1605
    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1606
    const-string v3, "name"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1607
    if-nez v3, :cond_5

    .line 1608
    const-string v3, "cl"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v3

    .line 1613
    :cond_5
    if-eqz v2, :cond_1e

    .line 1614
    :try_start_3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    move-object v2, v3

    .line 1621
    :cond_6
    :goto_1
    const/16 v3, 0x2e

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_11

    .line 1622
    invoke-static {}, Lcom/android/mms/util/MessageMimeTypeMap;->getSingleton()Lcom/android/mms/util/MessageMimeTypeMap;

    move-result-object v3

    invoke-virtual {v3, v14}, Lcom/android/mms/util/MessageMimeTypeMap;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v15, v3

    move-object v3, v2

    move-object v2, v15

    .line 1628
    :goto_2
    const-string v4, "Mms/MessageOptions"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "extension"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1629
    invoke-static {v14}, Lcom/google/android/mms/ContentType;->isDrmType(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1630
    const-string v4, "dcf"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 1631
    const-string v2, "dcf"

    .line 1635
    :cond_7
    if-nez v2, :cond_8

    .line 1636
    const-string v4, "text/x-vCard"

    invoke-virtual {v14, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 1637
    const-string v2, "vcf"

    .line 1647
    :cond_8
    :goto_3
    invoke-static {v3}, Lcom/android/mms/ui/MessageUtils;->replaceInvalidFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1648
    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1649
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_15

    .line 1650
    const-string v3, "_"

    .line 1655
    :cond_9
    :goto_4
    if-eqz v2, :cond_16

    .line 1656
    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1660
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->replaceFileMap:Ljava/util/HashMap;

    move-object v3, v0

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->replaceFileMap:Ljava/util/HashMap;

    move-object v3, v0

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/File;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    move-object/from16 v2, p1

    .line 1662
    :goto_6
    :try_start_4
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    .line 1663
    if-eqz v3, :cond_18

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_18

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    move-result v4

    if-nez v4, :cond_18

    .line 1664
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 1665
    const-string v5, "Mms/MessageOptions"

    const-string v6, "[MMS] copyPart: mkdirs for "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " failed!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_b

    .line 1667
    const/4 v2, 0x0

    .line 1689
    if-eqz v10, :cond_a

    .line 1691
    :try_start_5
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 1698
    :cond_a
    :goto_7
    if-eqz v11, :cond_b

    .line 1700
    :try_start_6
    throw v11
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 1709
    :cond_b
    :goto_8
    return v2

    .line 1586
    :cond_c
    :try_start_7
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V

    move-object v2, v3

    goto/16 :goto_0

    .line 1613
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_d

    .line 1614
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_d
    throw v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    .line 1680
    :catch_0
    move-exception v2

    move-object v3, v12

    move-object v4, v11

    move-object v5, v10

    .line 1681
    :goto_9
    :try_start_8
    const-string v6, "Mms/MessageOptions"

    const-string v7, "IOException caught while opening or reading stream"

    invoke-static {v6, v7, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1682
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1a

    .line 1683
    if-eqz v3, :cond_e

    .line 1684
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 1685
    :cond_e
    new-instance v3, Ljava/io/IOException;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 1689
    :catchall_1
    move-exception v2

    move-object v3, v4

    move-object v4, v5

    :goto_a
    if-eqz v4, :cond_f

    .line 1691
    :try_start_9
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    .line 1698
    :cond_f
    :goto_b
    if-eqz v3, :cond_10

    .line 1700
    :try_start_a
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_9

    .line 1705
    :cond_10
    :goto_c
    throw v2

    .line 1624
    :cond_11
    add-int/lit8 v4, v3, 0x1

    :try_start_b
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 1625
    const/4 v5, 0x0

    invoke-virtual {v2, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    move-object v2, v4

    goto/16 :goto_2

    .line 1638
    :cond_12
    const-string v4, "text/x-vCalendar"

    invoke-virtual {v14, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 1639
    const-string v2, "vcs"

    goto/16 :goto_3

    .line 1640
    :cond_13
    const-string v4, "text/x-vNote"

    invoke-virtual {v14, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 1641
    const-string v2, "vnt"

    goto/16 :goto_3

    .line 1642
    :cond_14
    const-string v4, "text/x-vtodo"

    invoke-virtual {v14, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1643
    const-string v2, "vts"

    goto/16 :goto_3

    .line 1652
    :cond_15
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_4

    :cond_16
    move-object v2, v3

    .line 1658
    goto/16 :goto_5

    .line 1660
    :cond_17
    new-instance v3, Ljava/io/File;

    sget-object v4, Lcom/android/mms/ui/MessageOptions;->STORE_DIR:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_0

    move-object v2, v3

    goto/16 :goto_6

    .line 1692
    :catch_1
    move-exception v3

    .line 1694
    const-string v4, "Mms/MessageOptions"

    const-string v5, "IOException caught while closing stream"

    invoke-static {v4, v5, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_7

    .line 1701
    :catch_2
    move-exception v3

    .line 1703
    const-string v4, "Mms/MessageOptions"

    const-string v5, "IOException caught while closing stream"

    invoke-static {v4, v5, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_8

    .line 1670
    :cond_18
    :try_start_c
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_b

    .line 1672
    const/16 v4, 0x1f40

    :try_start_d
    new-array v4, v4, [B

    .line 1674
    :goto_d
    invoke-virtual {v9, v4}, Ljava/io/FileInputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_19

    .line 1675
    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6, v5}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_d

    .line 1680
    :catch_3
    move-exception v4

    move-object v5, v10

    move-object v15, v2

    move-object v2, v4

    move-object v4, v3

    move-object v3, v15

    goto/16 :goto_9

    .line 1677
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mthisContext:Landroid/content/Context;

    move-object v4, v0

    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v4, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_3

    move-object v2, v3

    .line 1689
    :goto_e
    if-eqz v10, :cond_1d

    .line 1691
    :try_start_e
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_4

    move v3, v13

    .line 1698
    :goto_f
    if-eqz v2, :cond_1c

    .line 1700
    :try_start_f
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_5

    move v2, v3

    .line 1705
    goto/16 :goto_8

    .line 1692
    :catch_4
    move-exception v3

    .line 1694
    const-string v4, "Mms/MessageOptions"

    const-string v5, "IOException caught while closing stream"

    invoke-static {v4, v5, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1695
    const/4 v3, 0x0

    goto :goto_f

    .line 1701
    :catch_5
    move-exception v2

    .line 1703
    const-string v3, "Mms/MessageOptions"

    const-string v4, "IOException caught while closing stream"

    invoke-static {v3, v4, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1704
    const/4 v2, 0x0

    .line 1705
    goto/16 :goto_8

    .line 1687
    :cond_1a
    const/4 v2, 0x0

    .line 1689
    if-eqz v5, :cond_1b

    .line 1691
    :try_start_10
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_7

    .line 1698
    :cond_1b
    :goto_10
    if-eqz v4, :cond_b

    .line 1700
    :try_start_11
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_6

    goto/16 :goto_8

    .line 1701
    :catch_6
    move-exception v2

    .line 1703
    const-string v3, "Mms/MessageOptions"

    const-string v4, "IOException caught while closing stream"

    invoke-static {v3, v4, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1704
    const/4 v2, 0x0

    .line 1705
    goto/16 :goto_8

    .line 1692
    :catch_7
    move-exception v2

    .line 1694
    const-string v3, "Mms/MessageOptions"

    const-string v5, "IOException caught while closing stream"

    invoke-static {v3, v5, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1695
    const/4 v2, 0x0

    goto :goto_10

    .line 1692
    :catch_8
    move-exception v4

    .line 1694
    const-string v5, "Mms/MessageOptions"

    const-string v6, "IOException caught while closing stream"

    invoke-static {v5, v6, v4}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_b

    .line 1701
    :catch_9
    move-exception v3

    .line 1703
    const-string v4, "Mms/MessageOptions"

    const-string v5, "IOException caught while closing stream"

    invoke-static {v4, v5, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_c

    .line 1689
    :catchall_2
    move-exception v2

    move-object v4, v3

    move-object v3, v11

    goto/16 :goto_a

    :catchall_3
    move-exception v2

    move-object v3, v11

    move-object v4, v10

    goto/16 :goto_a

    :catchall_4
    move-exception v2

    move-object v4, v10

    goto/16 :goto_a

    .line 1680
    :catch_a
    move-exception v2

    move-object v4, v11

    move-object v5, v3

    move-object v3, v12

    goto/16 :goto_9

    :catch_b
    move-exception v3

    move-object v4, v11

    move-object v5, v10

    move-object v15, v3

    move-object v3, v2

    move-object v2, v15

    goto/16 :goto_9

    :cond_1c
    move v2, v3

    goto/16 :goto_8

    :cond_1d
    move v3, v13

    goto :goto_f

    :cond_1e
    move-object v2, v3

    goto/16 :goto_1

    :cond_1f
    move-object v2, v11

    goto :goto_e
.end method

.method private forwardMessageStartActivityForMms(Lcom/android/mms/ui/MessageItem;Lcom/google/android/mms/pdu/SendReq;Ljava/lang/String;Z)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    const-string v4, "Mms/MessageOptions"

    .line 723
    const-string v0, "Mms/MessageOptions"

    const-string v0, "forwardMessageStartActivityForMms()"

    invoke-static {v4, v0}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 725
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions;->mthisContext:Landroid/content/Context;

    const-class v2, Lcom/android/mms/ui/ConversationComposer;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 726
    const-string v1, "exit_on_sent"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 727
    const-string v1, "forwarded_message"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 730
    :try_start_0
    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions;->mthisContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v1

    .line 731
    sget-object v2, Landroid/provider/Telephony$Mms$Draft;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, p2, v2}, Lcom/google/android/mms/pdu/PduPersister;->persist(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;)Landroid/net/Uri;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 738
    const-string v2, "msg_uri"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 739
    const-string v1, "subject"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 740
    const-string v1, "checkCRMode"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 741
    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    const-string v2, "com.android.mms.ui.ForwardMessageActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 743
    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions;->mthisContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 744
    :goto_0
    return-void

    .line 732
    :catch_0
    move-exception v0

    .line 733
    const-string v1, "Mms/MessageOptions"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to copy message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 734
    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mthisContext:Landroid/content/Context;

    const v1, 0x7f090055

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private getFailedAddress(J)[Ljava/lang/String;
    .locals 11
    .parameter "groupId"

    .prologue
    .line 474
    const/4 v10, 0x0

    .line 475
    .local v10, dests:[Ljava/lang/String;
    const/4 v9, 0x0

    .line 476
    .local v9, cursor:Landroid/database/Cursor;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "group_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 479
    .local v4, selection:Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mthisContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "address"

    aput-object v6, v3, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 484
    if-eqz v9, :cond_0

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 485
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v0

    new-array v10, v0, [Ljava/lang/String;

    .line 486
    const/4 v7, 0x0

    .local v7, count:I
    move v8, v7

    .line 488
    .end local v7           #count:I
    .local v8, count:I
    :goto_0
    add-int/lit8 v7, v8, 0x1

    .end local v8           #count:I
    .restart local v7       #count:I
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v10, v8

    .line 489
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_3

    .line 492
    .end local v7           #count:I
    :cond_0
    if-eqz v9, :cond_1

    .line 493
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 496
    :cond_1
    return-object v10

    .line 492
    :catchall_0
    move-exception v0

    if-eqz v9, :cond_2

    .line 493
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    .restart local v7       #count:I
    :cond_3
    move v8, v7

    .end local v7           #count:I
    .restart local v8       #count:I
    goto :goto_0
.end method

.method private getFileNameWithPduPart(Lcom/google/android/mms/pdu/PduPart;J)Ljava/lang/String;
    .locals 11
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    const-string v9, "dcf"

    const-string v4, "cid:"

    .line 1065
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getContentLocation()[B

    move-result-object v0

    .line 1066
    if-nez v0, :cond_0

    .line 1067
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getFilename()[B

    move-result-object v0

    .line 1069
    :cond_0
    if-nez v0, :cond_1

    .line 1070
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getName()[B

    move-result-object v0

    .line 1073
    :cond_1
    if-nez v0, :cond_9

    .line 1074
    invoke-static {p2, p3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    .line 1078
    :goto_0
    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-ne v2, v1, :cond_2

    .line 1079
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1081
    :cond_2
    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-ne v2, v1, :cond_3

    .line 1082
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v8, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1084
    :cond_3
    const-string v1, "cid:"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1085
    const-string v1, "cid:"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1088
    :cond_4
    new-instance v7, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v1

    invoke-direct {v7, v1}, Ljava/lang/String;-><init>([B)V

    .line 1089
    invoke-static {v7}, Lcom/google/android/mms/ContentType;->isDrmType(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1091
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v2

    .line 1092
    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mthisContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions;->mContentResolver:Landroid/content/ContentResolver;

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1095
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1096
    const-string v1, "name"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1097
    if-nez v1, :cond_5

    .line 1098
    const-string v1, "cl"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 1102
    :cond_5
    if-eqz v0, :cond_10

    .line 1103
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-object v0, v1

    .line 1109
    :cond_6
    :goto_1
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_b

    .line 1111
    invoke-static {}, Lcom/android/mms/util/MessageMimeTypeMap;->getSingleton()Lcom/android/mms/util/MessageMimeTypeMap;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/android/mms/util/MessageMimeTypeMap;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    .line 1116
    :goto_2
    invoke-static {v7}, Lcom/google/android/mms/ContentType;->isDrmType(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1117
    const-string v2, "dcf"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 1118
    const-string v0, "dcf"

    move-object v0, v9

    .line 1121
    :cond_7
    if-nez v0, :cond_8

    .line 1122
    const-string v2, "text/x-vCard"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1123
    const-string v0, "vcf"

    .line 1133
    :cond_8
    :goto_3
    if-nez v0, :cond_f

    move-object v0, v1

    .line 1136
    :goto_4
    return-object v0

    .line 1076
    :cond_9
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    move-object v0, v1

    goto/16 :goto_0

    .line 1102
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_a

    .line 1103
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_a
    throw v1

    .line 1113
    :cond_b
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1114
    invoke-virtual {v0, v8, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    move-object v0, v2

    goto :goto_2

    .line 1124
    :cond_c
    const-string v2, "text/x-vCalendar"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1125
    const-string v0, "vcs"

    goto :goto_3

    .line 1126
    :cond_d
    const-string v2, "text/x-vNote"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1127
    const-string v0, "vnt"

    goto :goto_3

    .line 1128
    :cond_e
    const-string v2, "text/x-vtodo"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1129
    const-string v0, "vts"

    goto :goto_3

    .line 1136
    :cond_f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_10
    move-object v0, v1

    goto/16 :goto_1
.end method

.method public static isSingleSms(Lcom/android/mms/ui/MessageItem;)Z
    .locals 4
    .parameter "msgItem"

    .prologue
    const/4 v3, 0x1

    .line 959
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v1

    .line 960
    .local v1, smsManager:Landroid/telephony/SmsManager;
    iget-object v2, p0, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/telephony/SmsManager;->divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 961
    .local v0, messages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v3, :cond_0

    .line 962
    const/4 v2, 0x0

    .line 963
    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0
.end method

.method private islockmessage(Ljava/lang/String;)Z
    .locals 11
    .parameter "type"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    const-string v10, "locked"

    .line 240
    const/4 v7, 0x0

    .line 242
    .local v7, islocked:Z
    const-string v0, "mms"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 243
    new-array v2, v5, [Ljava/lang/String;

    const-string v0, "locked"

    aput-object v10, v2, v4

    .line 246
    .local v2, PROJECTION:[Ljava/lang/String;
    sget-object v0, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v4, p0, Lcom/android/mms/ui/MessageOptions;->msgId:J

    invoke-static {v0, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 247
    .local v1, messageUri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mContentResolver:Landroid/content/ContentResolver;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 257
    .local v6, cursor:Landroid/database/Cursor;
    :goto_0
    if-eqz v6, :cond_0

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 258
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v8

    .line 259
    .local v8, islocked_long:J
    const-wide/16 v3, 0x1

    cmp-long v0, v8, v3

    if-nez v0, :cond_0

    .line 260
    const/4 v7, 0x1

    .line 264
    .end local v8           #islocked_long:J
    :cond_0
    if-eqz v6, :cond_1

    .line 265
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 268
    :cond_1
    return v7

    .line 250
    .end local v1           #messageUri:Landroid/net/Uri;
    .end local v2           #PROJECTION:[Ljava/lang/String;
    .end local v6           #cursor:Landroid/database/Cursor;
    :cond_2
    new-array v2, v5, [Ljava/lang/String;

    const-string v0, "locked"

    aput-object v10, v2, v4

    .line 253
    .restart local v2       #PROJECTION:[Ljava/lang/String;
    sget-object v0, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v4, p0, Lcom/android/mms/ui/MessageOptions;->msgId:J

    invoke-static {v0, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 254
    .restart local v1       #messageUri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mContentResolver:Landroid/content/ContentResolver;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .restart local v6       #cursor:Landroid/database/Cursor;
    goto :goto_0

    .line 264
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 265
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method private resendGroupSmsMessageItem(Lcom/android/mms/ui/MessageItem;[Ljava/lang/String;Lcom/android/mms/data/Conversation;)V
    .locals 10
    .parameter "msgItem"
    .parameter "dests"
    .parameter "conversation"

    .prologue
    .line 539
    invoke-virtual {p3}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v4

    .line 541
    .local v4, threadId:J
    new-instance v0, Lcom/android/mms/transaction/SmsMessageSender;

    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions;->mthisContext:Landroid/content/Context;

    iget-object v3, p1, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    iget-wide v6, p1, Lcom/android/mms/ui/MessageItem;->mGroupId:J

    move-object v2, p2

    invoke-direct/range {v0 .. v7}, Lcom/android/mms/transaction/SmsMessageSender;-><init>(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;JJ)V

    .line 543
    .local v0, sender:Lcom/android/mms/transaction/MessageSender;
    :try_start_0
    invoke-interface {v0, v4, v5}, Lcom/android/mms/transaction/MessageSender;->sendMessage(J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 548
    :goto_0
    sget-object v1, Lcom/android/mms/ui/MessageUtils;->SMS_GROUP_CONTENT_URI:Landroid/net/Uri;

    iget-wide v2, p1, Lcom/android/mms/ui/MessageItem;->mGroupId:J

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v9

    .line 549
    .local v9, uri:Landroid/net/Uri;
    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions;->mthisContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "type=5"

    const/4 v6, 0x0

    invoke-static {v1, v2, v9, v3, v6}, Landroid/database/sqlite/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 550
    return-void

    .line 544
    .end local v9           #uri:Landroid/net/Uri;
    :catch_0
    move-exception v8

    .line 545
    .local v8, e:Ljava/lang/Exception;
    const-string v1, "Mms/MessageOptions"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to send SMS message, threadId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v8}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private resendMmsMessageItem(Lcom/android/mms/ui/MessageItem;)V
    .locals 18
    .parameter "msgItem"

    .prologue
    .line 433
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/ui/MessageItem;->getThreadId()J

    move-result-wide v14

    .line 434
    .local v14, threadId:J
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    move-object v12, v0

    .line 436
    .local v12, mmsUri:Landroid/net/Uri;
    const/4 v8, 0x0

    .line 438
    .local v8, cursor:Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    move-object v1, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mContentResolver:Landroid/content/ContentResolver;

    move-object v2, v0

    sget-object v3, Landroid/provider/Telephony$Mms$Outbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "m_size"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 442
    if-eqz v8, :cond_2

    .line 443
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxSizeScaleForPendingMmsAllowed()I

    move-result v1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxMessageSize()I

    move-result v2

    mul-int/2addr v1, v2

    int-to-long v10, v1

    .line 445
    .local v10, maxMessageSize:J
    const-wide/16 v16, 0x0

    .line 446
    .local v16, totalPendingSize:J
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 447
    const/4 v1, 0x1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    add-long v16, v16, v1

    goto :goto_0

    .line 449
    :cond_0
    cmp-long v1, v16, v10

    if-ltz v1, :cond_2

    .line 450
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    move-object v1, v0

    const v2, 0x7f090106

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 456
    if-eqz v8, :cond_1

    .line 457
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 470
    .end local v10           #maxMessageSize:J
    .end local v16           #totalPendingSize:J
    :cond_1
    :goto_1
    return-void

    .line 456
    :cond_2
    if-eqz v8, :cond_3

    .line 457
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 461
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/ui/MessageItem;->updatePendingStatus()V

    .line 462
    new-instance v13, Lcom/android/mms/transaction/MmsMessageSender;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    move-object v1, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/mms/ui/MessageItem;->mMessageSize:I

    move v2, v0

    int-to-long v2, v2

    invoke-direct {v13, v1, v12, v2, v3}, Lcom/android/mms/transaction/MmsMessageSender;-><init>(Landroid/content/Context;Landroid/net/Uri;J)V

    .line 464
    .local v13, sender:Lcom/android/mms/transaction/MessageSender;
    :try_start_1
    invoke-interface {v13, v14, v15}, Lcom/android/mms/transaction/MessageSender;->sendMessage(J)Z

    move-result v1

    if-nez v1, :cond_1

    .line 465
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    move-object v1, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mContentResolver:Landroid/content/ContentResolver;

    move-object v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v1, v2, v12, v3, v4}, Landroid/database/sqlite/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 467
    :catch_0
    move-exception v1

    move-object v9, v1

    .line 468
    .local v9, e:Ljava/lang/Exception;
    const-string v1, "Mms/MessageOptions"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to send message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", threadId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v9}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 456
    .end local v9           #e:Ljava/lang/Exception;
    .end local v13           #sender:Lcom/android/mms/transaction/MessageSender;
    :catchall_0
    move-exception v1

    if-eqz v8, :cond_4

    .line 457
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v1
.end method

.method private resendSmsMessageItem(Lcom/android/mms/ui/MessageItem;)V
    .locals 11
    .parameter "msgItem"

    .prologue
    const/4 v10, 0x0

    const-string v8, "Mms/MessageOptions"

    .line 414
    const-string v1, "Mms/MessageOptions"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resendSmsMessageItem(),msgItem="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getThreadId()J

    move-result-wide v4

    .line 417
    .local v4, threadId:J
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v3, p1, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    aput-object v3, v2, v1

    .line 419
    .local v2, dests:[Ljava/lang/String;
    new-instance v0, Lcom/android/mms/transaction/SmsMessageSender;

    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    iget-object v3, p1, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/transaction/SmsMessageSender;-><init>(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;J)V

    .line 422
    .local v0, sender:Lcom/android/mms/transaction/MessageSender;
    :try_start_0
    invoke-interface {v0, v4, v5}, Lcom/android/mms/transaction/MessageSender;->sendMessage(J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 428
    :goto_0
    sget-object v1, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v8, p1, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    invoke-static {v1, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    .line 429
    .local v7, uri:Landroid/net/Uri;
    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/mms/ui/MessageOptions;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v1, v3, v7, v10, v10}, Landroid/database/sqlite/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 430
    return-void

    .line 423
    .end local v7           #uri:Landroid/net/Uri;
    :catch_0
    move-exception v6

    .line 424
    .local v6, e:Ljava/lang/Exception;
    const-string v1, "Mms/MessageOptions"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to send SMS message, threadId="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1, v6}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private setLockIcon(Z)V
    .locals 2
    .parameter "isLock"

    .prologue
    .line 1713
    const-string v0, "sms"

    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1714
    iget-object p0, p0, Lcom/android/mms/ui/MessageOptions;->mthisContext:Landroid/content/Context;

    .end local p0
    check-cast p0, Lcom/android/mms/ui/SmsViewerActivity;

    invoke-virtual {p0}, Lcom/android/mms/ui/SmsViewerActivity;->getMViewTitleHeader()Lcom/android/mms/ui/ViewTitleHeader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/ViewTitleHeader;->setLockIcon(Z)V

    .line 1718
    :goto_0
    return-void

    .line 1716
    .restart local p0
    :cond_0
    iget-object p0, p0, Lcom/android/mms/ui/MessageOptions;->mthisContext:Landroid/content/Context;

    .end local p0
    check-cast p0, Lcom/android/mms/ui/SlideshowActivity;

    invoke-virtual {p0}, Lcom/android/mms/ui/SlideshowActivity;->getMViewTitleHeader()Lcom/android/mms/ui/ViewTitleHeader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/ViewTitleHeader;->setLockIcon(Z)V

    goto :goto_0
.end method

.method private showFileRenameDialog(Landroid/content/Context;)V
    .locals 10
    .parameter

    .prologue
    const/4 v8, 0x0

    .line 1250
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1252
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 1254
    const v4, 0x7f030001

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    move-object v2, v0

    const v5, 0x7f080003

    invoke-virtual {v2, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v1, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 1256
    const v1, 0x7f080004

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 1258
    const v2, 0x7f090177

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1259
    const/4 v2, 0x1

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1261
    iget-object v2, p0, Lcom/android/mms/ui/MessageOptions;->attachmentFiles:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1266
    const/16 v5, 0x2e

    invoke-virtual {v2, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    .line 1267
    add-int/lit8 v6, v5, 0x1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v2, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 1272
    :goto_0
    invoke-virtual {v2, v8, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1273
    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1274
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 1276
    const v2, 0x7f090069

    new-instance v5, Lcom/android/mms/ui/MessageOptions$4;

    invoke-direct {v5, p0, v1, v6}, Lcom/android/mms/ui/MessageOptions$4;-><init>(Lcom/android/mms/ui/MessageOptions;Landroid/widget/EditText;Ljava/lang/String;)V

    invoke-virtual {v3, v2, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1312
    const v2, 0x7f09006a

    new-instance v5, Lcom/android/mms/ui/MessageOptions$5;

    invoke-direct {v5, p0}, Lcom/android/mms/ui/MessageOptions$5;-><init>(Lcom/android/mms/ui/MessageOptions;)V

    invoke-virtual {v3, v2, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1318
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1319
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    sput-object v2, Lcom/android/mms/ui/MessageOptions;->mRenameDialog:Landroid/app/AlertDialog;

    .line 1323
    new-instance v2, Lcom/android/mms/ui/MessageOptions$6;

    invoke-direct {v2, p0, v1}, Lcom/android/mms/ui/MessageOptions$6;-><init>(Lcom/android/mms/ui/MessageOptions;Landroid/widget/EditText;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1354
    sget-object v2, Lcom/android/mms/ui/MessageOptions;->mRenameDialog:Landroid/app/AlertDialog;

    new-instance v3, Lcom/android/mms/ui/MessageOptions$7;

    invoke-direct {v3, p0, p1}, Lcom/android/mms/ui/MessageOptions$7;-><init>(Lcom/android/mms/ui/MessageOptions;Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1382
    sget-object v2, Lcom/android/mms/ui/MessageOptions;->mRenameDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 1384
    iget-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v2, :cond_0

    .line 1385
    new-instance v2, Lcom/android/mms/ui/MessageOptions$8;

    invoke-direct {v2, p0, v1}, Lcom/android/mms/ui/MessageOptions$8;-><init>(Lcom/android/mms/ui/MessageOptions;Landroid/widget/EditText;)V

    const-wide/16 v3, 0x1e

    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1392
    :cond_0
    return-void

    .line 1269
    :cond_1
    const/4 v5, 0x0

    .line 1270
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    move v9, v6

    move-object v6, v5

    move v5, v9

    goto :goto_0
.end method

.method private startCheckFileName(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 1233
    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->attachmentFiles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1234
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageOptions;->showFileRenameDialog(Landroid/content/Context;)V

    .line 1240
    :cond_0
    :goto_0
    return-void

    .line 1236
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->rawAttachments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1237
    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->rawAttachments:Ljava/util/ArrayList;

    iget-wide v1, p0, Lcom/android/mms/ui/MessageOptions;->attachMsgId:J

    invoke-direct {p0, v0, v1, v2}, Lcom/android/mms/ui/MessageOptions;->startExportRawAttachments(Ljava/util/ArrayList;J)V

    goto :goto_0
.end method

.method private startExportRawAttachments(Ljava/util/ArrayList;J)V
    .locals 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/model/AttachmentModel;",
            ">;J)V"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 1401
    sget-object v2, Lcom/android/mms/ui/MessageOptions;->STORE_DIR:Ljava/lang/String;

    .line 1403
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move v3, v5

    .line 1407
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_4

    .line 1408
    const-string v4, "text/plain"

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/model/AttachmentModel;

    invoke-virtual {v0}, Lcom/android/mms/model/AttachmentModel;->getContentType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v4, "application/smil"

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/model/AttachmentModel;

    invoke-virtual {v0}, Lcom/android/mms/model/AttachmentModel;->getContentType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1410
    const/4 v0, 0x1

    .line 1415
    :goto_1
    if-eqz v0, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1419
    iget-object p0, p0, Lcom/android/mms/ui/MessageOptions;->mthisContext:Landroid/content/Context;

    check-cast p0, Landroid/app/Activity;

    const/high16 v0, 0x7f08

    invoke-virtual {p0, v0}, Landroid/app/Activity;->showDialog(I)V

    .line 1426
    :cond_1
    :goto_2
    return-void

    .line 1407
    :cond_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 1421
    :cond_3
    new-instance v0, Lcom/android/mms/ui/MessageOptions$RawAttachmentsExportThread;

    move-object v1, p0

    move-object v3, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/ui/MessageOptions$RawAttachmentsExportThread;-><init>(Lcom/android/mms/ui/MessageOptions;Ljava/lang/String;Ljava/util/ArrayList;J)V

    .line 1422
    if-eqz v0, :cond_1

    .line 1423
    invoke-virtual {v0}, Lcom/android/mms/ui/MessageOptions$RawAttachmentsExportThread;->start()V

    goto :goto_2

    :cond_4
    move v0, v5

    goto :goto_1
.end method

.method private tryToResendGroupSms(Lcom/android/mms/ui/MessageItem;Lcom/android/mms/data/Conversation;)V
    .locals 11
    .parameter "msgItem"
    .parameter "conversation"

    .prologue
    .line 516
    iget-wide v7, p1, Lcom/android/mms/ui/MessageItem;->mGroupId:J

    invoke-direct {p0, v7, v8}, Lcom/android/mms/ui/MessageOptions;->getFailedAddress(J)[Ljava/lang/String;

    move-result-object v2

    .line 517
    .local v2, dests:[Ljava/lang/String;
    if-nez v2, :cond_0

    .line 536
    :goto_0
    return-void

    .line 520
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 521
    .local v6, recipients:Ljava/lang/StringBuilder;
    move-object v0, v2

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v4, :cond_2

    aget-object v5, v0, v3

    .line 522
    .local v5, recipient:Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-eqz v7, :cond_1

    .line 523
    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 525
    :cond_1
    invoke-static {v5}, Lcom/android/mms/data/Contact;->getContactName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 521
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 528
    .end local v5           #recipient:Ljava/lang/String;
    :cond_2
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/android/mms/ui/MessageOptions;->mthisContext:Landroid/content/Context;

    invoke-direct {v1, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 529
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    const v7, 0x7f090221

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 530
    iget-object v7, p0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f090222

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v6, v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 532
    const v7, 0x7f0901d5

    new-instance v8, Lcom/android/mms/ui/MessageOptions$ResendGroupSmsListener;

    invoke-direct {v8, p0, p1, v2, p2}, Lcom/android/mms/ui/MessageOptions$ResendGroupSmsListener;-><init>(Lcom/android/mms/ui/MessageOptions;Lcom/android/mms/ui/MessageItem;[Ljava/lang/String;Lcom/android/mms/data/Conversation;)V

    invoke-virtual {v1, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 534
    const v7, 0x7f0901cd

    const/4 v8, 0x0

    invoke-virtual {v1, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 535
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method


# virtual methods
.method public copyMessageToSIM(Lcom/android/mms/ui/MessageItem;Lcom/android/mms/data/Conversation;)V
    .locals 13
    .parameter
    .parameter

    .prologue
    .line 841
    const-string v0, "Mms/MessageOptions"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "copyMessageToSIM(),msgItem="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 843
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getBoxId()I

    move-result v4

    .line 844
    iget-object v1, p1, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    .line 850
    iget-wide v2, p1, Lcom/android/mms/ui/MessageItem;->mTime:J

    .line 851
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 852
    invoke-virtual {v0, v2, v3}, Landroid/text/format/Time;->set(J)V

    .line 853
    invoke-virtual {v0}, Landroid/text/format/Time;->toString()Ljava/lang/String;

    move-result-object v0

    .line 855
    const-string v2, "Mms/MessageOptions"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "stime : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 857
    const/4 v2, 0x2

    const/16 v3, 0x8

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 858
    const/16 v3, 0x9

    const/16 v5, 0xf

    invoke-virtual {v0, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 860
    const-string v3, "Mms/MessageOptions"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "temp_date : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 861
    const-string v3, "Mms/MessageOptions"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "temp_date : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 863
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 865
    const-string v0, "Mms/MessageOptions"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "timestamp : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 867
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    .line 868
    invoke-virtual {v0, v1}, Landroid/telephony/SmsManager;->divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 869
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 871
    iget-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mthisContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 872
    const-string v6, "pref_key_manage_smsc_address"

    const-string v7, "Not Set"

    invoke-interface {v2, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 874
    const/4 v6, 0x1

    if-le v3, v6, :cond_0

    .line 875
    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mthisContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    const v2, 0x7f090024

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 956
    :goto_0
    return-void

    .line 894
    :cond_0
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isGroupSms()Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz p2, :cond_1

    .line 895
    invoke-virtual {p2}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/data/ContactList;->getNumbers()[Ljava/lang/String;

    move-result-object v3

    move-object v6, v3

    .line 901
    :goto_1
    if-nez v6, :cond_2

    .line 902
    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mthisContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    const v2, 0x7f090025

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 897
    :cond_1
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v6, 0x0

    iget-object v7, p1, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    aput-object v7, v3, v6

    move-object v6, v3

    goto :goto_1

    .line 907
    :cond_2
    const/4 v3, 0x0

    .line 908
    const/4 v7, 0x0

    .line 909
    const/4 v8, 0x0

    move v9, v3

    move v12, v7

    move v7, v8

    move v8, v12

    :goto_2
    array-length v3, v6

    if-ge v7, v3, :cond_6

    .line 911
    :try_start_0
    aget-object v3, v6, v7

    if-nez v3, :cond_4

    .line 912
    iget-object v3, p0, Lcom/android/mms/ui/MessageOptions;->mthisContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    const v11, 0x7f090025

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    invoke-static {v3, v10, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 931
    :catch_0
    move-exception v3

    .line 932
    const-string v10, "Mms/MessageOptions"

    const-string v11, "NumberFormatException :"

    invoke-static {v10, v11, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 933
    iget-object v3, p0, Lcom/android/mms/ui/MessageOptions;->mthisContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    const v11, 0x7f090025

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    invoke-static {v3, v10, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    :cond_3
    move v3, v8

    move v8, v9

    .line 909
    :goto_3
    add-int/lit8 v7, v7, 0x1

    move v9, v8

    move v8, v3

    goto :goto_2

    .line 919
    :cond_4
    :try_start_1
    aget-object v3, v6, v7

    invoke-static {v3}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 920
    iget-object v3, p0, Lcom/android/mms/ui/MessageOptions;->mthisContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    const v11, 0x7f090025

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    invoke-static {v3, v10, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 926
    :cond_5
    aget-object v3, v6, v7

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->MakeSimPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v3

    .line 927
    if-eqz v3, :cond_3

    .line 929
    add-int/lit8 v8, v8, 0x1

    move v12, v8

    move v8, v3

    move v3, v12

    goto :goto_3

    .line 939
    :cond_6
    if-nez v9, :cond_7

    .line 940
    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mthisContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    const v2, 0x7f090027

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 942
    :cond_7
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions;->mthisContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 944
    array-length v1, v6

    sub-int/2addr v1, v8

    .line 945
    if-nez v1, :cond_8

    .line 946
    const v1, 0x7f090223

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 947
    const v1, 0x7f090224

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 952
    :goto_4
    const v1, 0x7f0901cb

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 953
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 949
    :cond_8
    const v2, 0x7f090225

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 950
    iget-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    const v3, 0x7f090226

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v5

    const/4 v1, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_4
.end method

.method public copyToClipboard(Ljava/lang/String;)V
    .locals 4
    .parameter "str"

    .prologue
    .line 379
    const-string v1, "Mms/MessageOptions"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "copyToClipboard(),str="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions;->mthisContext:Landroid/content/Context;

    const-string v2, "clipboard"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    .line 383
    .local v0, clip:Landroid/text/ClipboardManager;
    invoke-virtual {v0, p1}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 384
    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions;->mthisContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    const v3, 0x7f09022f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 385
    return-void
.end method

.method public createOptionsMenu(Landroid/view/Menu;)V
    .locals 9
    .parameter "menu"

    .prologue
    const/16 v8, 0x23

    const/16 v7, 0x18

    const/16 v5, 0x12

    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 165
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 167
    iget-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-boolean v2, v2, Lcom/android/mms/ui/MessageItem;->mIsCbSms:Z

    if-ne v2, v4, :cond_0

    .line 168
    const v2, 0x7f0900b0

    invoke-interface {p1, v6, v5, v6, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x2020014

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 171
    const v2, 0x7f090022

    invoke-interface {p1, v6, v7, v6, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x7f02006b

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 235
    :goto_0
    return-void

    .line 177
    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageItem;->isInboxMessage()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 178
    const/16 v2, 0x20

    const v3, 0x7f0900ae

    invoke-interface {p1, v6, v2, v6, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x7f020081

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 182
    :cond_1
    iget-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageItem;->isFailedMessage()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 183
    const/16 v2, 0x1e

    const v3, 0x7f0900ad

    invoke-interface {p1, v6, v2, v6, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x7f020082

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 187
    :cond_2
    iget-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mType:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/mms/ui/MessageOptions;->islockmessage(Ljava/lang/String;)Z

    move-result v0

    .line 188
    .local v0, islocked:Z
    if-eqz v0, :cond_6

    .line 189
    const/16 v2, 0x1d

    const v3, 0x7f0900b2

    invoke-interface {p1, v6, v2, v6, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x7f020084

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 195
    :goto_1
    const v2, 0x7f0900b0

    invoke-interface {p1, v6, v5, v6, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x2020014

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 198
    iget-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 199
    const v2, 0x7f090022

    invoke-interface {p1, v6, v7, v6, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x7f02006b

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 202
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-static {v2}, Lcom/android/mms/ui/MessageOptions;->isSingleSms(Lcom/android/mms/ui/MessageItem;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageItem;->getBoxId()I

    move-result v2

    if-eq v2, v4, :cond_3

    iget-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageItem;->getBoxId()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    .line 205
    :cond_3
    const/16 v2, 0x1f

    const v3, 0x7f090023

    invoke-interface {p1, v6, v2, v6, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x7f02006c

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 210
    :cond_4
    iget-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 212
    iget-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v2, v2, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v2, :cond_7

    .line 213
    const v2, 0x7f090154

    invoke-interface {p1, v6, v8, v6, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x7f020063

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 232
    :cond_5
    :goto_2
    const/16 v2, 0x11

    const v3, 0x7f090014

    invoke-interface {p1, v6, v2, v6, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x7f020074

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 192
    :cond_6
    const/16 v2, 0x1c

    const v3, 0x7f0900b1

    invoke-interface {p1, v6, v2, v6, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x7f020076

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto/16 :goto_1

    .line 219
    :cond_7
    :try_start_0
    iget-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mthisContext:Landroid/content/Context;

    sget-object v3, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v4, p0, Lcom/android/mms/ui/MessageOptions;->msgId:J

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/model/SlideshowModel;->createFromMessageUri(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/mms/model/SlideshowModel;

    move-result-object v1

    .line 221
    .local v1, slideshow:Lcom/android/mms/model/SlideshowModel;
    if-eqz v1, :cond_5

    .line 222
    const/4 v2, 0x0

    const/16 v3, 0x23

    const/4 v4, 0x0

    const v5, 0x7f090154

    invoke-interface {p1, v2, v3, v4, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 224
    .end local v1           #slideshow:Lcom/android/mms/model/SlideshowModel;
    :catch_0
    move-exception v2

    goto :goto_2
.end method

.method public forwardMessage(Lcom/android/mms/ui/MessageItem;)V
    .locals 14
    .parameter

    .prologue
    const/4 v13, 0x0

    const/4 v12, -0x5

    const/4 v11, -0x4

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 564
    const-string v1, "Mms/MessageOptions"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "forwardMessage(),msgItem="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    invoke-static {v9}, Lcom/android/mms/model/SlideshowModel;->setAddAttachmentSlideForCompose(Z)V

    .line 567
    const-string v1, "sms"

    iget-object v2, p1, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 568
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mthisContext:Landroid/content/Context;

    const-class v3, Lcom/android/mms/ui/ConversationComposer;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 569
    const-string v2, "exit_on_sent"

    invoke-virtual {v1, v2, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 570
    const-string v2, "forwarded_message"

    invoke-virtual {v1, v2, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 571
    const-string v2, "sms_body"

    iget-object v3, p1, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 572
    iget-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mthisContext:Landroid/content/Context;

    const-string v3, "com.android.mms.ui.ForwardMessageActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 574
    iget-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 700
    :goto_0
    return-void

    .line 575
    :cond_0
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isWpm()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 576
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mthisContext:Landroid/content/Context;

    const-class v3, Lcom/android/mms/ui/ConversationComposer;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 577
    const-string v2, "exit_on_sent"

    invoke-virtual {v1, v2, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 578
    const-string v2, "forwarded_message"

    invoke-virtual {v1, v2, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 579
    const-string v2, "sms_body"

    iget-object v3, p1, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 580
    iget-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mthisContext:Landroid/content/Context;

    const-string v3, "com.android.mms.ui.ForwardMessageActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 582
    iget-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mthisContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 584
    :cond_1
    new-instance v3, Lcom/google/android/mms/pdu/SendReq;

    invoke-direct {v3}, Lcom/google/android/mms/pdu/SendReq;-><init>()V

    .line 589
    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions;->mthisContext:Landroid/content/Context;

    const v2, 0x7f09004a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 590
    iget-object v2, p1, Lcom/android/mms/ui/MessageItem;->mSubject:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 591
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/mms/ui/MessageItem;->mSubject:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 603
    :goto_1
    if-eqz v1, :cond_13

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v4, 0x28

    if-le v2, v4, :cond_13

    .line 604
    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x28

    invoke-virtual {v1, v10, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    move-object v4, v1

    .line 606
    :goto_2
    iget-object v1, p1, Lcom/android/mms/ui/MessageItem;->mSubject:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 607
    new-instance v1, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-direct {v1, v4}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Lcom/google/android/mms/pdu/SendReq;->setSubject(Lcom/google/android/mms/pdu/EncodedStringValue;)V

    .line 610
    :cond_2
    iget-object v1, p1, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    iget-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mthisContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/mms/model/SlideshowModel;->makeCopy(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduBody;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/google/android/mms/pdu/SendReq;->setBody(Lcom/google/android/mms/pdu/PduBody;)V

    .line 611
    iget-object v1, p1, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v1}, Lcom/android/mms/model/SlideshowModel;->getSlides()Ljava/util/ArrayList;

    move-result-object v1

    .line 613
    if-eqz v1, :cond_12

    .line 614
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v2, v10

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/model/SlideModel;

    .line 615
    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v7, v2

    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/model/MediaModel;

    .line 617
    :try_start_0
    invoke-virtual {v1}, Lcom/android/mms/model/MediaModel;->isImage()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 618
    move-object v0, v1

    check-cast v0, Lcom/android/mms/model/ImageModel;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/android/mms/model/ImageModel;->checkCreationMode()V

    .line 619
    check-cast v1, Lcom/android/mms/model/ImageModel;

    invoke-virtual {v1}, Lcom/android/mms/model/ImageModel;->checkContentRestriction()V

    :cond_3
    :goto_5
    move v1, v7

    :goto_6
    move v7, v1

    .line 635
    goto :goto_4

    :cond_4
    move-object v1, v13

    .line 593
    goto :goto_1

    .line 620
    :cond_5
    invoke-virtual {v1}, Lcom/android/mms/model/MediaModel;->isAudio()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 621
    move-object v0, v1

    check-cast v0, Lcom/android/mms/model/AudioModel;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/android/mms/model/AudioModel;->checkCreationMode()V

    .line 622
    check-cast v1, Lcom/android/mms/model/AudioModel;

    invoke-virtual {v1}, Lcom/android/mms/model/AudioModel;->checkContentRestriction()V

    goto :goto_5

    .line 627
    :catch_0
    move-exception v1

    .line 628
    const/4 v1, -0x3

    .line 635
    goto :goto_6

    .line 623
    :cond_6
    invoke-virtual {v1}, Lcom/android/mms/model/MediaModel;->isVideo()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 624
    move-object v0, v1

    check-cast v0, Lcom/android/mms/model/VideoModel;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/android/mms/model/VideoModel;->checkCreationMode()V

    .line 625
    check-cast v1, Lcom/android/mms/model/VideoModel;

    invoke-virtual {v1}, Lcom/android/mms/model/VideoModel;->checkContentRestriction()V
    :try_end_0
    .catch Lcom/android/mms/UnsupportContentTypeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/android/mms/ResolutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/android/mms/ContentRestrictionException; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_5

    .line 629
    :catch_1
    move-exception v1

    .line 630
    const/4 v1, -0x2

    .line 635
    goto :goto_6

    .line 631
    :catch_2
    move-exception v1

    move v1, v11

    .line 635
    goto :goto_6

    .line 633
    :catch_3
    move-exception v1

    move v1, v12

    .line 634
    goto :goto_6

    :cond_7
    move v2, v7

    .line 635
    goto :goto_3

    :cond_8
    move v1, v2

    .line 640
    :goto_7
    iget-object v2, p1, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v2}, Lcom/android/mms/model/SlideshowModel;->getRawAttachmentsList()Ljava/util/ArrayList;

    move-result-object v2

    .line 642
    if-eqz v2, :cond_c

    .line 643
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v6, v10

    move v7, v1

    .line 644
    :goto_8
    if-ge v6, v5, :cond_b

    .line 646
    :try_start_1
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/model/AttachmentModel;

    invoke-virtual {v1}, Lcom/android/mms/model/AttachmentModel;->getContentType()Ljava/lang/String;

    move-result-object v1

    const-string v8, "text/x-vNote"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/model/AttachmentModel;

    invoke-virtual {v1}, Lcom/android/mms/model/AttachmentModel;->getContentType()Ljava/lang/String;

    move-result-object v1

    const-string v8, "text/x-vtodo"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 651
    :cond_9
    invoke-direct {p0}, Lcom/android/mms/ui/MessageOptions;->checkCRForRawAttachment()V
    :try_end_1
    .catch Lcom/android/mms/UnsupportContentTypeException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Lcom/android/mms/ResolutionException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Lcom/android/mms/ContentRestrictionException; {:try_start_1 .. :try_end_1} :catch_7

    :cond_a
    move v1, v7

    .line 644
    :goto_9
    add-int/lit8 v6, v6, 0x1

    move v7, v1

    goto :goto_8

    .line 653
    :catch_4
    move-exception v1

    .line 654
    const/4 v1, -0x3

    .line 661
    goto :goto_9

    .line 655
    :catch_5
    move-exception v1

    .line 656
    const/4 v1, -0x2

    .line 661
    goto :goto_9

    .line 657
    :catch_6
    move-exception v1

    move v1, v11

    .line 661
    goto :goto_9

    .line 659
    :catch_7
    move-exception v1

    move v1, v12

    .line 660
    goto :goto_9

    :cond_b
    move v1, v7

    .line 665
    :cond_c
    if-eq v1, v12, :cond_d

    if-ne v1, v11, :cond_11

    .line 666
    :cond_d
    iget-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mthisContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/mms/model/CarrierContentRestriction;->getMmsCreationMode(Landroid/content/Context;)I

    move-result v2

    .line 669
    if-ne v2, v9, :cond_e

    .line 670
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mthisContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 672
    const v2, 0x7f02005a

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 673
    const v2, 0x7f09009d

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 674
    const v2, 0x7f090160

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 675
    const v2, 0x7f090069

    new-instance v5, Lcom/android/mms/ui/MessageOptions$CreationOkListener;

    invoke-direct {v5, p0, p1, v3, v4}, Lcom/android/mms/ui/MessageOptions$CreationOkListener;-><init>(Lcom/android/mms/ui/MessageOptions;Lcom/android/mms/ui/MessageItem;Lcom/google/android/mms/pdu/SendReq;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 677
    const v2, 0x7f09006a

    invoke-virtual {v1, v2, v13}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 678
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 679
    :cond_e
    if-nez v2, :cond_10

    .line 680
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/mms/ui/MessageOptions;->mthisContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 682
    const v3, 0x7f020091

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 683
    if-ne v1, v11, :cond_f

    .line 684
    const v1, 0x7f090043

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 688
    :goto_a
    const v1, 0x7f09016a

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 689
    const v1, 0x104000a

    invoke-virtual {v2, v1, v13}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 690
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 686
    :cond_f
    const v1, 0x7f09011d

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    goto :goto_a

    .line 692
    :cond_10
    invoke-direct {p0, p1, v3, v4, v10}, Lcom/android/mms/ui/MessageOptions;->forwardMessageStartActivityForMms(Lcom/android/mms/ui/MessageItem;Lcom/google/android/mms/pdu/SendReq;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 696
    :cond_11
    invoke-direct {p0, p1, v3, v4, v10}, Lcom/android/mms/ui/MessageOptions;->forwardMessageStartActivityForMms(Lcom/android/mms/ui/MessageItem;Lcom/google/android/mms/pdu/SendReq;Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_12
    move v1, v10

    goto/16 :goto_7

    :cond_13
    move-object v4, v1

    goto/16 :goto_2
.end method

.method public isPlayerStop(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 1721
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/16 v1, 0x15

    if-eq v0, v1, :cond_0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/16 v1, 0x12

    if-ne v0, v1, :cond_1

    .line 1722
    :cond_0
    const/4 v0, 0x1

    .line 1724
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public lockMessage(Lcom/android/mms/ui/MessageItem;Z)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 815
    const-string v0, "Mms/MessageOptions"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lockMessage(),msgItem="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",locked="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 818
    const-string v0, "sms"

    iget-object v1, p1, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 819
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isGroupSms()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 820
    sget-object v0, Lcom/android/mms/ui/MessageUtils;->SMS_GROUP_CONTENT_URI:Landroid/net/Uri;

    .line 829
    :goto_0
    iget-wide v1, p1, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 830
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 831
    const-string v2, "locked"

    if-eqz p2, :cond_3

    :goto_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 833
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/android/mms/ui/MessageOptions$1;

    invoke-direct {v3, p0, v0, v1}, Lcom/android/mms/ui/MessageOptions$1;-><init>(Lcom/android/mms/ui/MessageOptions;Landroid/net/Uri;Landroid/content/ContentValues;)V

    const-string v0, "lockMessage"

    invoke-direct {v2, v3, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 838
    return-void

    .line 822
    :cond_0
    sget-object v0, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    .line 823
    :cond_1
    const-string v0, "mms"

    iget-object v1, p1, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 824
    sget-object v0, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    .line 826
    :cond_2
    sget-object v0, Lcom/android/mms/ui/MessageUtils;->WAP_PUSH_MESSAGE_BY_ID_CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    .line 831
    :cond_3
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public optionItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .parameter "item"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x1

    .line 274
    iget-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    if-nez v2, :cond_0

    move v2, v3

    .line 325
    .end local p0
    :goto_0
    return v2

    .line 277
    .restart local p0
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    move v2, v3

    .line 325
    goto :goto_0

    .line 279
    :pswitch_1
    iget-object p0, p0, Lcom/android/mms/ui/MessageOptions;->mthisContext:Landroid/content/Context;

    .end local p0
    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    move v2, v5

    .line 280
    goto :goto_0

    .line 282
    .restart local p0
    :pswitch_2
    iget-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {p0, v2, v4}, Lcom/android/mms/ui/MessageOptions;->resendMessage(Lcom/android/mms/ui/MessageItem;Lcom/android/mms/data/Conversation;)Z

    .line 283
    iget-object p0, p0, Lcom/android/mms/ui/MessageOptions;->mthisContext:Landroid/content/Context;

    .end local p0
    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    move v2, v5

    .line 284
    goto :goto_0

    .line 286
    .restart local p0
    :pswitch_3
    iget-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v2, v2, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MessageOptions;->copyToClipboard(Ljava/lang/String;)V

    move v2, v5

    .line 287
    goto :goto_0

    .line 290
    :pswitch_4
    iget-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {p0, v2, v4}, Lcom/android/mms/ui/MessageOptions;->copyMessageToSIM(Lcom/android/mms/ui/MessageItem;Lcom/android/mms/data/Conversation;)V

    move v2, v5

    .line 292
    goto :goto_0

    .line 294
    :pswitch_5
    iget-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MessageOptions;->forwardMessage(Lcom/android/mms/ui/MessageItem;)V

    move v2, v5

    .line 295
    goto :goto_0

    .line 298
    :pswitch_6
    iget-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {p0, v2, v4}, Lcom/android/mms/ui/MessageOptions;->viewMessageDetail(Lcom/android/mms/ui/MessageItem;Lcom/android/mms/data/Conversation;)V

    move v2, v5

    .line 299
    goto :goto_0

    .line 301
    :pswitch_7
    iget-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mType:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/mms/ui/MessageOptions;->islockmessage(Ljava/lang/String;)Z

    move-result v0

    .line 302
    .local v0, islocked:Z
    new-instance v1, Lcom/android/mms/ui/MessageOptions$DeleteMessageListener;

    iget-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v2, v2, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    invoke-direct {v1, p0, v2, v0}, Lcom/android/mms/ui/MessageOptions$DeleteMessageListener;-><init>(Lcom/android/mms/ui/MessageOptions;Landroid/net/Uri;Z)V

    .line 303
    .local v1, l:Lcom/android/mms/ui/MessageOptions$DeleteMessageListener;
    invoke-direct {p0, v1, v0}, Lcom/android/mms/ui/MessageOptions;->confirmDeleteDialog(Landroid/content/DialogInterface$OnClickListener;Z)V

    move v2, v5

    .line 304
    goto :goto_0

    .line 307
    .end local v0           #islocked:Z
    .end local v1           #l:Lcom/android/mms/ui/MessageOptions$DeleteMessageListener;
    :pswitch_8
    iget-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v2, v2, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    iget-wide v3, p0, Lcom/android/mms/ui/MessageOptions;->msgId:J

    invoke-virtual {p0, v2, v5, v3, v4}, Lcom/android/mms/ui/MessageOptions;->showAttachmentList(Lcom/android/mms/model/SlideshowModel;ZJ)V

    move v2, v5

    .line 308
    goto :goto_0

    .line 311
    :pswitch_9
    iget-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {p0, v2, v5}, Lcom/android/mms/ui/MessageOptions;->lockMessage(Lcom/android/mms/ui/MessageItem;Z)V

    .line 312
    invoke-direct {p0, v5}, Lcom/android/mms/ui/MessageOptions;->setLockIcon(Z)V

    move v2, v5

    .line 313
    goto :goto_0

    .line 316
    :pswitch_a
    iget-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {p0, v2, v3}, Lcom/android/mms/ui/MessageOptions;->lockMessage(Lcom/android/mms/ui/MessageItem;Z)V

    .line 317
    invoke-direct {p0, v3}, Lcom/android/mms/ui/MessageOptions;->setLockIcon(Z)V

    move v2, v5

    .line 318
    goto :goto_0

    :pswitch_b
    move v2, v5

    .line 322
    goto :goto_0

    .line 277
    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_9
        :pswitch_a
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_8
    .end packed-switch
.end method

.method public resendMessage(Lcom/android/mms/ui/MessageItem;Lcom/android/mms/data/Conversation;)Z
    .locals 5
    .parameter "msgItem"
    .parameter "conversation"

    .prologue
    const/4 v3, 0x1

    const-string v4, "Mms/MessageOptions"

    .line 388
    const-string v1, "Mms/MessageOptions"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resendMessage(),msgItem="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    const-string v2, "device_policy"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 396
    .local v0, mDPM:Landroid/app/admin/DevicePolicyManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getAllowTextMessaging(Landroid/content/ComponentName;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 397
    const-string v1, "Mms/MessageOptions"

    const-string v1, "message sending is disabled"

    invoke-static {v4, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions;->mthisContext:Landroid/content/Context;

    const v2, 0x7f09018c

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    move v1, v3

    .line 410
    :goto_0
    return v1

    .line 403
    :cond_0
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 404
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageOptions;->resendMmsMessageItem(Lcom/android/mms/ui/MessageItem;)V

    .line 410
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 405
    :cond_1
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isGroupSms()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 406
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/MessageOptions;->tryToResendGroupSms(Lcom/android/mms/ui/MessageItem;Lcom/android/mms/data/Conversation;)V

    goto :goto_1

    .line 408
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageOptions;->resendSmsMessageItem(Lcom/android/mms/ui/MessageItem;)V

    goto :goto_1
.end method

.method public showAttachmentList(Lcom/android/mms/model/SlideshowModel;ZJ)V
    .locals 11
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 969
    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mthisContext:Landroid/content/Context;

    sget-object v1, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p3, p4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/ui/MessageOptions$PduBodyCache;->getPduBody(Landroid/content/Context;Landroid/net/Uri;)Lcom/google/android/mms/pdu/PduBody;

    move-result-object v0

    .line 971
    if-nez v0, :cond_0

    .line 1061
    :goto_0
    return-void

    .line 976
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions;->attachmentFiles:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 977
    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions;->rawAttachments:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 978
    iput-wide p3, p0, Lcom/android/mms/ui/MessageOptions;->attachMsgId:J

    .line 979
    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions;->replaceFileMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 981
    invoke-virtual {v0}, Lcom/google/android/mms/pdu/PduBody;->getPartsNum()I

    move-result v1

    .line 982
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    move v3, v9

    .line 984
    :goto_1
    if-ge v3, v1, :cond_2

    .line 985
    invoke-virtual {v0, v3}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v4

    .line 986
    new-instance v5, Ljava/lang/String;

    invoke-virtual {v4}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    .line 987
    const-string v6, "text/plain"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "application/smil"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 989
    invoke-direct {p0, v4, p3, p4}, Lcom/android/mms/ui/MessageOptions;->getFileNameWithPduPart(Lcom/google/android/mms/pdu/PduPart;J)Ljava/lang/String;

    move-result-object v6

    .line 992
    :try_start_0
    new-instance v7, Lcom/android/mms/model/AttachmentModel;

    iget-object v8, p0, Lcom/android/mms/ui/MessageOptions;->mthisContext:Landroid/content/Context;

    invoke-virtual {v4}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v7, v8, v5, v6, v4}, Lcom/android/mms/model/AttachmentModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v7

    .line 997
    :goto_2
    if-eqz v4, :cond_1

    .line 998
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v2, v5, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 984
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 993
    :catch_0
    move-exception v4

    .line 995
    invoke-virtual {v4}, Lcom/google/android/mms/MmsException;->printStackTrace()V

    move-object v4, v10

    goto :goto_2

    .line 1002
    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_3

    .line 1003
    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mthisContext:Landroid/content/Context;

    const v1, 0x7f090155

    invoke-static {v0, v1, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1005
    :cond_3
    new-instance v6, Lcom/android/mms/ui/AttachmentListAdapter;

    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mthisContext:Landroid/content/Context;

    const/high16 v1, 0x7f03

    invoke-direct {v6, v0, v1, v2}, Lcom/android/mms/ui/AttachmentListAdapter;-><init>(Landroid/content/Context;ILjava/util/ArrayList;)V

    .line 1007
    new-instance v7, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mthisContext:Landroid/content/Context;

    invoke-direct {v7, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1008
    const v0, 0x7f090154

    invoke-virtual {v7, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1009
    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1011
    if-eqz p2, :cond_4

    .line 1012
    const v8, 0x7f090101

    new-instance v0, Lcom/android/mms/ui/MessageOptions$AttachOkListener;

    iget-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mthisContext:Landroid/content/Context;

    move-object v1, p0

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/ui/MessageOptions$AttachOkListener;-><init>(Lcom/android/mms/ui/MessageOptions;Landroid/content/Context;ZJ)V

    invoke-virtual {v7, v8, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1018
    :goto_3
    const v0, 0x7f09006a

    new-instance v1, Lcom/android/mms/ui/MessageOptions$AttachCancelListener;

    invoke-direct {v1, p0, v10}, Lcom/android/mms/ui/MessageOptions$AttachCancelListener;-><init>(Lcom/android/mms/ui/MessageOptions;Lcom/android/mms/ui/MessageOptions$1;)V

    invoke-virtual {v7, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1019
    new-instance v0, Lcom/android/mms/ui/MessageOptions$2;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageOptions$2;-><init>(Lcom/android/mms/ui/MessageOptions;)V

    invoke-virtual {v7, v6, v0}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1029
    new-instance v0, Lcom/android/mms/ui/MessageOptions$3;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageOptions$3;-><init>(Lcom/android/mms/ui/MessageOptions;)V

    invoke-virtual {v7, v0}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 1057
    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1058
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1059
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/android/mms/ui/AttachmentListAdapter;->setSaveButton(Landroid/widget/Button;)V

    goto/16 :goto_0

    .line 1014
    :cond_4
    const v8, 0x7f09003e

    new-instance v0, Lcom/android/mms/ui/MessageOptions$AttachOkListener;

    iget-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mthisContext:Landroid/content/Context;

    move-object v1, p0

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/ui/MessageOptions$AttachOkListener;-><init>(Lcom/android/mms/ui/MessageOptions;Landroid/content/Context;ZJ)V

    invoke-virtual {v7, v8, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_3
.end method

.method public viewMessageDetail(Lcom/android/mms/ui/MessageItem;Lcom/android/mms/data/Conversation;)V
    .locals 13
    .parameter "msgItem"
    .parameter "conversation"

    .prologue
    .line 330
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "m_type"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "msg_box"

    aput-object v1, v2, v0

    .line 335
    .local v2, PROJECTION_Mms:[Ljava/lang/String;
    const/4 v0, 0x5

    new-array v5, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v5, v0

    const/4 v0, 0x1

    const-string v1, "type"

    aput-object v1, v5, v0

    const/4 v0, 0x2

    const-string v1, "address"

    aput-object v1, v5, v0

    const/4 v0, 0x3

    const-string v1, "date"

    aput-object v1, v5, v0

    const/4 v0, 0x4

    const-string v1, "error_code"

    aput-object v1, v5, v0

    .line 345
    .local v5, PROJECTION_Sms:[Ljava/lang/String;
    const/4 v9, 0x0

    .line 347
    .local v9, address:Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 348
    invoke-virtual {p2}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Lcom/android/mms/data/ContactList;->formattedNames(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 350
    :cond_0
    const-string v0, "mms"

    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 351
    sget-object v0, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v3, p0, Lcom/android/mms/ui/MessageOptions;->msgId:J

    invoke-static {v0, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 352
    .local v1, messageUri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .end local v5           #PROJECTION_Sms:[Ljava/lang/String;
    move-result-object v10

    .line 357
    .local v10, cursor:Landroid/database/Cursor;
    :goto_0
    if-eqz v10, :cond_1

    .line 359
    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 360
    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mthisContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    .end local v1           #messageUri:Landroid/net/Uri;
    iget v1, v1, Lcom/android/mms/ui/MessageItem;->mMessageSize:I

    iget-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    .end local v2           #PROJECTION_Mms:[Ljava/lang/String;
    invoke-static {v0, v10, v1, v9, v2}, Lcom/android/mms/ui/MessageUtils;->getMessageDetails(Landroid/content/Context;Landroid/database/Cursor;ILjava/lang/String;Lcom/android/mms/ui/MessageItem;)Ljava/lang/String;

    move-result-object v12

    .line 363
    .local v12, messageDetails:Ljava/lang/String;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions;->mthisContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f09009a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    .line 371
    if-eqz v10, :cond_1

    .line 372
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 376
    .end local v12           #messageDetails:Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 354
    .end local v10           #cursor:Landroid/database/Cursor;
    .restart local v2       #PROJECTION_Mms:[Ljava/lang/String;
    .restart local v5       #PROJECTION_Sms:[Ljava/lang/String;
    :cond_2
    sget-object v0, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v3, p0, Lcom/android/mms/ui/MessageOptions;->msgId:J

    invoke-static {v0, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 355
    .restart local v1       #messageUri:Landroid/net/Uri;
    iget-object v3, p0, Lcom/android/mms/ui/MessageOptions;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, v1

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .restart local v10       #cursor:Landroid/database/Cursor;
    goto :goto_0

    .line 368
    .end local v1           #messageUri:Landroid/net/Uri;
    .end local v2           #PROJECTION_Mms:[Ljava/lang/String;
    .end local v5           #PROJECTION_Sms:[Ljava/lang/String;
    :catch_0
    move-exception v0

    move-object v11, v0

    .line 369
    .local v11, e:Landroid/view/WindowManager$BadTokenException;
    :try_start_1
    const-string v0, "Mms/MessageOptions"

    const-string v1, "Failed view message details"

    invoke-static {v0, v1, v11}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 371
    if-eqz v10, :cond_1

    .line 372
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 371
    .end local v11           #e:Landroid/view/WindowManager$BadTokenException;
    :catchall_0
    move-exception v0

    if-eqz v10, :cond_3

    .line 372
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method
