.class public Lcom/android/mms/data/WorkingMessage;
.super Ljava/lang/Object;
.source "WorkingMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/data/WorkingMessage$MessageStatusListener;
    }
.end annotation


# static fields
.field private static final ATTACHMENT_META_COLUMNS:[Ljava/lang/String;

.field private static final MMS_DRAFT_PROJECTION:[Ljava/lang/String;

.field private static final MMS_OUTBOX_PROJECTION:[Ljava/lang/String;

.field private static final SMS_BODY_PROJECTION:[Ljava/lang/String;

.field public static mForceMmsState:Z

.field private static sMmsEnabled:Z


# instance fields
.field private mAttachmentType:I

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private mConversation:Lcom/android/mms/data/Conversation;

.field private mDiscarded:Z

.field private mHandler:Landroid/os/Handler;

.field private mMessageUri:Landroid/net/Uri;

.field private mMmsState:I

.field public mNewSlide:I

.field private mRecipients:Ljava/lang/String;

.field private mSlideshow:Lcom/android/mms/model/SlideshowModel;

.field private final mStatusListener:Lcom/android/mms/data/WorkingMessage$MessageStatusListener;

.field private mSubject:Ljava/lang/CharSequence;

.field private mText:[Ljava/lang/CharSequence;

.field private mWorkingRecipients:Lcom/android/mms/data/ContactList;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v5, "_id"

    .line 158
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v0

    sput-boolean v0, Lcom/android/mms/data/WorkingMessage;->sMmsEnabled:Z

    .line 164
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v5, v0, v2

    const-string v1, "m_size"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/mms/data/WorkingMessage;->MMS_OUTBOX_PROJECTION:[Ljava/lang/String;

    .line 544
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "_size"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/mms/data/WorkingMessage;->ATTACHMENT_META_COLUMNS:[Ljava/lang/String;

    .line 1657
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v5, v0, v2

    const-string v1, "sub"

    aput-object v1, v0, v3

    const-string v1, "sub_cs"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/mms/data/WorkingMessage;->MMS_DRAFT_PROJECTION:[Ljava/lang/String;

    .line 1804
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "body"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/mms/data/WorkingMessage;->SMS_BODY_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/android/mms/ui/ComposeMessage;)V
    .locals 4
    .parameter "context"
    .parameter "activity"

    .prologue
    const/4 v2, 0x0

    const-string v3, ""

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    sget v0, Lcom/android/mms/ui/MessageUtils;->MESSAGE_MAX_SLIDE_NUM:I

    new-array v0, v0, [Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    .line 150
    const-string v0, ""

    iput-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mRecipients:Ljava/lang/String;

    .line 155
    iput-boolean v2, p0, Lcom/android/mms/data/WorkingMessage;->mDiscarded:Z

    .line 561
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mms/data/WorkingMessage;->mNewSlide:I

    .line 217
    iput-object p1, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    .line 218
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mContentResolver:Landroid/content/ContentResolver;

    .line 219
    iput-object p2, p0, Lcom/android/mms/data/WorkingMessage;->mStatusListener:Lcom/android/mms/data/WorkingMessage$MessageStatusListener;

    .line 220
    iput v2, p0, Lcom/android/mms/data/WorkingMessage;->mAttachmentType:I

    .line 221
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    const-string v1, ""

    aput-object v3, v0, v2

    .line 222
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/data/WorkingMessage;Lcom/android/mms/data/Conversation;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Lcom/android/mms/data/WorkingMessage;->preSendSmsWorker(Lcom/android/mms/data/Conversation;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/mms/data/WorkingMessage;Lcom/android/mms/data/Conversation;Landroid/net/Uri;Lcom/google/android/mms/pdu/PduPersister;Lcom/android/mms/model/SlideshowModel;Lcom/google/android/mms/pdu/SendReq;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 77
    invoke-direct/range {p0 .. p5}, Lcom/android/mms/data/WorkingMessage;->sendMmsWorker(Lcom/android/mms/data/Conversation;Landroid/net/Uri;Lcom/google/android/mms/pdu/PduPersister;Lcom/android/mms/model/SlideshowModel;Lcom/google/android/mms/pdu/SendReq;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/mms/data/WorkingMessage;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/mms/data/WorkingMessage;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    iput-object p1, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/mms/data/WorkingMessage;)Lcom/android/mms/model/SlideshowModel;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/mms/pdu/PduPersister;Lcom/google/android/mms/pdu/SendReq;Lcom/android/mms/model/SlideshowModel;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 77
    invoke-static {p0, p1, p2}, Lcom/android/mms/data/WorkingMessage;->createDraftMmsMessage(Lcom/google/android/mms/pdu/PduPersister;Lcom/google/android/mms/pdu/SendReq;Lcom/android/mms/model/SlideshowModel;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Landroid/net/Uri;Lcom/google/android/mms/pdu/PduPersister;Lcom/android/mms/model/SlideshowModel;Lcom/google/android/mms/pdu/SendReq;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 77
    invoke-static {p0, p1, p2, p3}, Lcom/android/mms/data/WorkingMessage;->updateDraftMmsMessage(Landroid/net/Uri;Lcom/google/android/mms/pdu/PduPersister;Lcom/android/mms/model/SlideshowModel;Lcom/google/android/mms/pdu/SendReq;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/mms/data/WorkingMessage;Lcom/android/mms/data/Conversation;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/android/mms/data/WorkingMessage;->asyncDeleteDraftSmsMessage(Lcom/android/mms/data/Conversation;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/mms/data/WorkingMessage;JLjava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 77
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/data/WorkingMessage;->updateDraftSmsMessage(JLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/mms/data/WorkingMessage;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/mms/data/WorkingMessage;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method private appendMedia(IILandroid/net/Uri;Z)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x5

    const/4 v6, 0x3

    const/4 v5, 0x2

    .line 2050
    new-instance v1, Ljava/lang/StringBuffer;

    const/16 v2, 0x64

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 2051
    const-string v2, "Mms/WorkingMessage"

    const-string v3, "appendMedia(),location="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, ",type="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, ",uri="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, ",checkCRMode="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2056
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v1, p1}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v4

    .line 2058
    if-nez p2, :cond_0

    .line 2114
    :goto_0
    return-void

    .line 2066
    :cond_0
    const/4 v1, 0x1

    if-ne p2, v1, :cond_4

    .line 2067
    new-instance v2, Lcom/android/mms/model/ImageModel;

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v3}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/model/LayoutModel;->getImageRegion()Lcom/android/mms/model/RegionModel;

    move-result-object v3

    invoke-direct {v2, v1, p3, v3}, Lcom/android/mms/model/ImageModel;-><init>(Landroid/content/Context;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;)V

    .line 2069
    if-eqz p4, :cond_3

    .line 2070
    move-object v0, v2

    check-cast v0, Lcom/android/mms/model/ImageModel;

    move-object v1, v0

    invoke-virtual {v1}, Lcom/android/mms/model/ImageModel;->checkCreationMode()V

    .line 2074
    :goto_1
    move-object v0, v2

    check-cast v0, Lcom/android/mms/model/ImageModel;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/mms/model/ImageModel;->checkResolution()V

    move-object v1, v8

    .line 2101
    :goto_2
    if-eq p2, v7, :cond_a

    .line 2102
    invoke-virtual {v4, v2}, Lcom/android/mms/model/SlideModel;->add(Lcom/android/mms/model/MediaModel;)Z

    .line 2109
    :goto_3
    if-eq p2, v5, :cond_1

    if-ne p2, v6, :cond_2

    .line 2110
    :cond_1
    invoke-virtual {v2}, Lcom/android/mms/model/MediaModel;->getDuration()I

    move-result v1

    invoke-virtual {v4, v1}, Lcom/android/mms/model/SlideModel;->updateDuration(I)V

    .line 2113
    :cond_2
    invoke-direct {p0}, Lcom/android/mms/data/WorkingMessage;->syncTextToSlideshow()V

    goto :goto_0

    .line 2072
    :cond_3
    move-object v0, v2

    check-cast v0, Lcom/android/mms/model/ImageModel;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/mms/model/ImageModel;->checkContentRestriction()V

    goto :goto_1

    .line 2076
    :cond_4
    if-ne p2, v5, :cond_6

    .line 2077
    new-instance v2, Lcom/android/mms/model/VideoModel;

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v3}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/model/LayoutModel;->getImageRegion()Lcom/android/mms/model/RegionModel;

    move-result-object v3

    invoke-direct {v2, v1, p3, v3}, Lcom/android/mms/model/VideoModel;-><init>(Landroid/content/Context;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;)V

    .line 2079
    if-eqz p4, :cond_5

    .line 2080
    move-object v0, v2

    check-cast v0, Lcom/android/mms/model/VideoModel;

    move-object v1, v0

    invoke-virtual {v1}, Lcom/android/mms/model/VideoModel;->checkCreationMode()V

    move-object v1, v8

    goto :goto_2

    .line 2082
    :cond_5
    move-object v0, v2

    check-cast v0, Lcom/android/mms/model/VideoModel;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/mms/model/VideoModel;->checkContentRestriction()V

    move-object v1, v8

    goto :goto_2

    .line 2085
    :cond_6
    if-ne p2, v6, :cond_8

    .line 2086
    new-instance v2, Lcom/android/mms/model/AudioModel;

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-direct {v2, v1, p3}, Lcom/android/mms/model/AudioModel;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .line 2088
    if-eqz p4, :cond_7

    .line 2089
    move-object v0, v2

    check-cast v0, Lcom/android/mms/model/AudioModel;

    move-object v1, v0

    invoke-virtual {v1}, Lcom/android/mms/model/AudioModel;->checkCreationMode()V

    move-object v1, v8

    goto :goto_2

    .line 2091
    :cond_7
    move-object v0, v2

    check-cast v0, Lcom/android/mms/model/AudioModel;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/mms/model/AudioModel;->checkContentRestriction()V

    move-object v1, v8

    goto :goto_2

    .line 2094
    :cond_8
    if-ne p2, v7, :cond_9

    .line 2095
    new-instance v1, Lcom/android/mms/model/AttachmentModel;

    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p3, p4}, Lcom/android/mms/model/AttachmentModel;-><init>(Landroid/content/Context;Landroid/net/Uri;Z)V

    move-object v2, v8

    goto :goto_2

    .line 2097
    :cond_9
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "changeMedia type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", uri="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2104
    :cond_a
    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v3, v1}, Lcom/android/mms/model/SlideshowModel;->addAttachment(Lcom/android/mms/model/AttachmentModel;)V

    goto/16 :goto_3
.end method

.method private asyncDelete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1907
    const-string v0, "Mms/WorkingMessage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "asyncDelete "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " where "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1909
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/mms/data/WorkingMessage$5;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/mms/data/WorkingMessage$5;-><init>(Lcom/android/mms/data/WorkingMessage;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1914
    return-void
.end method

.method private asyncDeleteDraftMmsMessage(J)V
    .locals 3
    .parameter

    .prologue
    .line 1988
    const-string v0, "Mms/WorkingMessage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "asyncDeleteDraftMmsMessage(),threadId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1989
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "thread_id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1990
    sget-object v1, Landroid/provider/Telephony$Mms$Draft;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2}, Lcom/android/mms/data/WorkingMessage;->asyncDelete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 1991
    return-void
.end method

.method private asyncDeleteDraftSmsMessage(Lcom/android/mms/data/Conversation;)V
    .locals 4
    .parameter

    .prologue
    .line 1972
    const-string v0, "Mms/WorkingMessage"

    const-string v1, "asyncDeleteDraftSmsMessage()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1973
    invoke-virtual {p1}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v0

    .line 1974
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    invoke-static {}, Lcom/android/mms/data/Conversation;->getTempThreadId()J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 1975
    sget-object v2, Landroid/provider/Telephony$Sms$Conversations;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "type=3"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/mms/data/WorkingMessage;->asyncDelete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 1978
    :cond_0
    return-void
.end method

.method private asyncSendMms(Lcom/android/mms/data/Conversation;)V
    .locals 8
    .parameter "conv"

    .prologue
    .line 1374
    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    .line 1375
    .local v4, mmsUri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v5

    .line 1377
    .local v5, persister:Lcom/google/android/mms/pdu/PduPersister;
    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    .line 1378
    .local v2, slideshow:Lcom/android/mms/model/SlideshowModel;
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mSubject:Ljava/lang/CharSequence;

    invoke-static {p1, v0}, Lcom/android/mms/data/WorkingMessage;->makeSendReq(Lcom/android/mms/data/Conversation;Ljava/lang/CharSequence;)Lcom/google/android/mms/pdu/SendReq;

    move-result-object v6

    .line 1381
    .local v6, sendReq:Lcom/google/android/mms/pdu/SendReq;
    new-instance v7, Ljava/lang/Thread;

    new-instance v0, Lcom/android/mms/data/WorkingMessage$2;

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/data/WorkingMessage$2;-><init>(Lcom/android/mms/data/WorkingMessage;Lcom/android/mms/model/SlideshowModel;Lcom/android/mms/data/Conversation;Landroid/net/Uri;Lcom/google/android/mms/pdu/PduPersister;Lcom/google/android/mms/pdu/SendReq;)V

    const-string v1, "send_mms"

    invoke-direct {v7, v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    .line 1389
    return-void
.end method

.method private asyncSendSms(Lcom/android/mms/data/Conversation;)V
    .locals 4
    .parameter "conv"

    .prologue
    .line 1361
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1363
    .local v0, msgText:Ljava/lang/String;
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/mms/data/WorkingMessage$1;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/mms/data/WorkingMessage$1;-><init>(Lcom/android/mms/data/WorkingMessage;Lcom/android/mms/data/Conversation;Ljava/lang/String;)V

    const-string v3, "send_sms"

    invoke-direct {v1, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 1368
    return-void
.end method

.method private asyncUpdateDraftMmsMessage(Lcom/android/mms/data/Conversation;)V
    .locals 4
    .parameter

    .prologue
    .line 1742
    const-string v0, "Mms/WorkingMessage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "asyncUpdateDraftMmsMessage conv="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mMessageUri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1745
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v0

    .line 1746
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mSubject:Ljava/lang/CharSequence;

    invoke-static {p1, v1}, Lcom/android/mms/data/WorkingMessage;->makeSendReq(Lcom/android/mms/data/Conversation;Ljava/lang/CharSequence;)Lcom/google/android/mms/pdu/SendReq;

    move-result-object v1

    .line 1748
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/android/mms/data/WorkingMessage$3;

    invoke-direct {v3, p0, p1, v0, v1}, Lcom/android/mms/data/WorkingMessage$3;-><init>(Lcom/android/mms/data/WorkingMessage;Lcom/android/mms/data/Conversation;Lcom/google/android/mms/pdu/PduPersister;Lcom/google/android/mms/pdu/SendReq;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 1763
    return-void
.end method

.method private asyncUpdateDraftSmsMessage(Lcom/android/mms/data/Conversation;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1872
    const-string v0, "Mms/WorkingMessage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "asyncUpdateDraftSmsMessage(),conv="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1874
    invoke-virtual {p1}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/data/ContactList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1883
    :goto_0
    return-void

    .line 1876
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/mms/data/WorkingMessage$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/mms/data/WorkingMessage$4;-><init>(Lcom/android/mms/data/WorkingMessage;Lcom/android/mms/data/Conversation;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method private changeMedia(IILandroid/net/Uri;Z)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x5

    const/4 v5, 0x3

    .line 2122
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 2124
    if-eqz p3, :cond_0

    .line 2125
    const-string v1, "Mms/WorkingMessage"

    const-string v2, "appendMedia(),location="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, ",uri="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, ",checkCRMode="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2130
    :cond_0
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v0

    if-gtz v0, :cond_3

    .line 2131
    :cond_1
    const-string v0, "Mms"

    const-string v1, "[WorkingMessage] changeMedia: no slides!"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2245
    :cond_2
    :goto_0
    return-void

    .line 2134
    :cond_3
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0, p1}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v0

    .line 2139
    if-nez p2, :cond_4

    .line 2141
    if-nez p3, :cond_2

    .line 2142
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->removeImage()Z

    .line 2143
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->removeVideo()Z

    .line 2144
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->removeAudio()Z

    goto :goto_0

    .line 2150
    :cond_4
    if-ne p2, v7, :cond_b

    .line 2151
    new-instance v1, Lcom/android/mms/model/ImageModel;

    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v3}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/model/LayoutModel;->getImageRegion()Lcom/android/mms/model/RegionModel;

    move-result-object v3

    invoke-direct {v1, v2, p3, v3}, Lcom/android/mms/model/ImageModel;-><init>(Landroid/content/Context;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;)V

    .line 2155
    if-eqz p4, :cond_5

    .line 2156
    invoke-virtual {v1}, Lcom/android/mms/model/ImageModel;->checkCreationMode()V

    .line 2158
    :cond_5
    invoke-virtual {v1}, Lcom/android/mms/model/ImageModel;->checkContentRestriction()V

    .line 2159
    invoke-virtual {v1}, Lcom/android/mms/model/ImageModel;->checkResolution()V

    move-object v2, v1

    move-object v1, v4

    .line 2188
    :goto_1
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    move-result v3

    if-eqz v3, :cond_14

    .line 2189
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->getAudio()Lcom/android/mms/model/AudioModel;

    move-result-object v3

    .line 2191
    :goto_2
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 2192
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->getImage()Lcom/android/mms/model/ImageModel;

    move-result-object v3

    .line 2194
    :cond_6
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 2195
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->getVideo()Lcom/android/mms/model/VideoModel;

    move-result-object v3

    .line 2199
    :cond_7
    if-eq p2, v6, :cond_8

    .line 2201
    if-ne p2, v5, :cond_11

    .line 2202
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->removeAudio()Z

    .line 2203
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->removeVideo()Z

    .line 2215
    :cond_8
    :goto_3
    if-eq p2, v6, :cond_13

    .line 2217
    :try_start_0
    invoke-virtual {v0, v2}, Lcom/android/mms/model/SlideModel;->add(Lcom/android/mms/model/MediaModel;)Z
    :try_end_0
    .catch Lcom/android/mms/UnsupportContentTypeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/android/mms/ResolutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/android/mms/RotationRestrictionException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/android/mms/ContentRestrictionException; {:try_start_0 .. :try_end_0} :catch_4

    .line 2241
    :goto_4
    if-eq p2, v8, :cond_9

    if-ne p2, v5, :cond_a

    .line 2242
    :cond_9
    invoke-virtual {v2}, Lcom/android/mms/model/MediaModel;->getDuration()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/mms/model/SlideModel;->updateDuration(I)V

    .line 2244
    :cond_a
    invoke-direct {p0}, Lcom/android/mms/data/WorkingMessage;->syncTextToSlideshow()V

    goto :goto_0

    .line 2161
    :cond_b
    if-ne p2, v8, :cond_d

    .line 2162
    new-instance v1, Lcom/android/mms/model/VideoModel;

    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v3}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/model/LayoutModel;->getImageRegion()Lcom/android/mms/model/RegionModel;

    move-result-object v3

    invoke-direct {v1, v2, p3, v3}, Lcom/android/mms/model/VideoModel;-><init>(Landroid/content/Context;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;)V

    .line 2166
    if-eqz p4, :cond_c

    .line 2167
    invoke-virtual {v1}, Lcom/android/mms/model/VideoModel;->checkCreationMode()V

    .line 2169
    :cond_c
    invoke-virtual {v1}, Lcom/android/mms/model/VideoModel;->checkContentRestriction()V

    move-object v2, v1

    move-object v1, v4

    .line 2171
    goto :goto_1

    :cond_d
    if-ne p2, v5, :cond_f

    .line 2172
    new-instance v1, Lcom/android/mms/model/AudioModel;

    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p3}, Lcom/android/mms/model/AudioModel;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .line 2175
    if-eqz p4, :cond_e

    .line 2176
    invoke-virtual {v1}, Lcom/android/mms/model/AudioModel;->checkCreationMode()V

    .line 2178
    :cond_e
    invoke-virtual {v1}, Lcom/android/mms/model/AudioModel;->checkContentRestriction()V

    move-object v2, v1

    move-object v1, v4

    .line 2180
    goto :goto_1

    :cond_f
    if-ne p2, v6, :cond_10

    .line 2181
    new-instance v1, Lcom/android/mms/model/AttachmentModel;

    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p3, p4}, Lcom/android/mms/model/AttachmentModel;-><init>(Landroid/content/Context;Landroid/net/Uri;Z)V

    move-object v2, v4

    goto :goto_1

    .line 2183
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeMedia type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2204
    :cond_11
    if-ne p2, v7, :cond_12

    .line 2205
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->removeImage()Z

    .line 2206
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->removeVideo()Z

    goto :goto_3

    .line 2208
    :cond_12
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->removeImage()Z

    .line 2209
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->removeVideo()Z

    .line 2210
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->removeAudio()Z

    goto/16 :goto_3

    .line 2219
    :catch_0
    move-exception v1

    .line 2220
    invoke-virtual {v0, v3}, Lcom/android/mms/model/SlideModel;->add(Lcom/android/mms/model/MediaModel;)Z

    .line 2221
    new-instance v0, Lcom/android/mms/UnsupportContentTypeException;

    const-string v1, "UnsupportContentTypeException"

    invoke-direct {v0, v1}, Lcom/android/mms/UnsupportContentTypeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2222
    :catch_1
    move-exception v1

    .line 2223
    invoke-virtual {v0, v3}, Lcom/android/mms/model/SlideModel;->add(Lcom/android/mms/model/MediaModel;)Z

    .line 2224
    new-instance v0, Lcom/android/mms/ExceedMessageSizeException;

    const-string v1, "ExceedMessageSizeException"

    invoke-direct {v0, v1}, Lcom/android/mms/ExceedMessageSizeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2225
    :catch_2
    move-exception v1

    .line 2226
    invoke-virtual {v0, v3}, Lcom/android/mms/model/SlideModel;->add(Lcom/android/mms/model/MediaModel;)Z

    .line 2227
    new-instance v0, Lcom/android/mms/ResolutionException;

    const-string v1, "ResolutionException"

    invoke-direct {v0, v1}, Lcom/android/mms/ResolutionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2228
    :catch_3
    move-exception v1

    .line 2229
    invoke-virtual {v0, v3}, Lcom/android/mms/model/SlideModel;->add(Lcom/android/mms/model/MediaModel;)Z

    .line 2230
    new-instance v0, Lcom/android/mms/RotationRestrictionException;

    const-string v1, "RotationRestrictionException"

    invoke-direct {v0, v1}, Lcom/android/mms/RotationRestrictionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2231
    :catch_4
    move-exception v1

    .line 2232
    invoke-virtual {v0, v3}, Lcom/android/mms/model/SlideModel;->add(Lcom/android/mms/model/MediaModel;)Z

    .line 2233
    new-instance v0, Lcom/android/mms/ContentRestrictionException;

    const-string v1, "ContentRestrictionException"

    invoke-direct {v0, v1}, Lcom/android/mms/ContentRestrictionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2236
    :cond_13
    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v3, v1}, Lcom/android/mms/model/SlideshowModel;->addAttachment(Lcom/android/mms/model/AttachmentModel;)V

    goto/16 :goto_4

    :cond_14
    move-object v3, v4

    goto/16 :goto_2
.end method

.method private static createDraftMmsMessage(Lcom/google/android/mms/pdu/PduPersister;Lcom/google/android/mms/pdu/SendReq;Lcom/android/mms/model/SlideshowModel;)Landroid/net/Uri;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1727
    const-string v0, "Mms/WorkingMessage"

    const-string v1, "createDraftMmsMessage()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1729
    :try_start_0
    invoke-virtual {p2}, Lcom/android/mms/model/SlideshowModel;->toPduBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v0

    .line 1730
    invoke-virtual {p1, v0}, Lcom/google/android/mms/pdu/SendReq;->setBody(Lcom/google/android/mms/pdu/PduBody;)V

    .line 1731
    sget-object v1, Landroid/provider/Telephony$Mms$Draft;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, p1, v1}, Lcom/google/android/mms/pdu/PduPersister;->persist(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    .line 1732
    invoke-virtual {p2, v0}, Lcom/android/mms/model/SlideshowModel;->sync(Lcom/google/android/mms/pdu/PduBody;)V
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 1735
    :goto_0
    return-object v0

    .line 1734
    :catch_0
    move-exception v0

    .line 1735
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static createEmpty(Landroid/content/Context;Lcom/android/mms/ui/ComposeMessage;)Lcom/android/mms/data/WorkingMessage;
    .locals 3
    .parameter "context"
    .parameter "activity"

    .prologue
    .line 228
    const-string v1, "Mms/WorkingMessage"

    const-string v2, "createEmpty()"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    new-instance v0, Lcom/android/mms/data/WorkingMessage;

    invoke-direct {v0, p0, p1}, Lcom/android/mms/data/WorkingMessage;-><init>(Landroid/content/Context;Lcom/android/mms/ui/ComposeMessage;)V

    .line 232
    .local v0, msg:Lcom/android/mms/data/WorkingMessage;
    return-object v0
.end method

.method private deleteDraftSmsMessage(J)V
    .locals 5
    .parameter

    .prologue
    .line 1981
    const-string v0, "Mms/WorkingMessage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteDraftSmsMessage(),threadId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1982
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/Telephony$Sms$Conversations;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "type=3"

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroid/database/sqlite/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1985
    return-void
.end method

.method private deleteMmsMessage(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Lcom/android/mms/data/Conversation;Z)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1940
    const-string v0, "Mms/WorkingMessage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteMmsMessage(),uri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",selection="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1941
    new-instance v0, Lcom/android/mms/data/WorkingMessage$6;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/data/WorkingMessage$6;-><init>(Lcom/android/mms/data/WorkingMessage;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Lcom/android/mms/data/Conversation;)V

    .line 1964
    if-eqz p5, :cond_0

    .line 1965
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 1969
    :goto_0
    return-void

    .line 1967
    :cond_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method private ensureSlideshow()V
    .locals 3

    .prologue
    .line 706
    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v2, :cond_0

    .line 715
    :goto_0
    return-void

    .line 710
    :cond_0
    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/mms/model/SlideshowModel;->createNew(Landroid/content/Context;)Lcom/android/mms/model/SlideshowModel;

    move-result-object v1

    .line 711
    .local v1, slideshow:Lcom/android/mms/model/SlideshowModel;
    new-instance v0, Lcom/android/mms/model/SlideModel;

    invoke-direct {v0, v1}, Lcom/android/mms/model/SlideModel;-><init>(Lcom/android/mms/model/SlideshowModel;)V

    .line 712
    .local v0, slide:Lcom/android/mms/model/SlideModel;
    invoke-virtual {v1, v0}, Lcom/android/mms/model/SlideshowModel;->add(Lcom/android/mms/model/SlideModel;)Z

    .line 713
    iput-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    goto :goto_0
.end method

.method public static load(Landroid/content/Context;Lcom/android/mms/ui/ComposeMessage;Landroid/net/Uri;)Lcom/android/mms/data/WorkingMessage;
    .locals 6
    .parameter "context"
    .parameter "activity"
    .parameter "uri"

    .prologue
    const-string v5, "Mms/WorkingMessage"

    .line 241
    new-instance v1, Lcom/android/mms/data/WorkingMessage;

    invoke-direct {v1, p0, p1}, Lcom/android/mms/data/WorkingMessage;-><init>(Landroid/content/Context;Lcom/android/mms/ui/ComposeMessage;)V

    .line 242
    .local v1, msg:Lcom/android/mms/data/WorkingMessage;
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Landroid/provider/Telephony$Mms$Draft;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 243
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v2

    .line 245
    .local v2, persister:Lcom/google/android/mms/pdu/PduPersister;
    const-string v3, "Mms/WorkingMessage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "load: moving to drafts"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    :try_start_0
    sget-object v3, Landroid/provider/Telephony$Mms$Draft;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, p2, v3}, Lcom/google/android/mms/pdu/PduPersister;->move(Landroid/net/Uri;Landroid/net/Uri;)Landroid/net/Uri;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p2

    .line 255
    .end local v2           #persister:Lcom/google/android/mms/pdu/PduPersister;
    :cond_0
    invoke-direct {v1, p2}, Lcom/android/mms/data/WorkingMessage;->loadFromUri(Landroid/net/Uri;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 259
    :cond_1
    :goto_0
    return-object v1

    .line 249
    .restart local v2       #persister:Lcom/google/android/mms/pdu/PduPersister;
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 250
    .local v0, e:Lcom/google/android/mms/MmsException;
    const-string v3, "Mms/WorkingMessage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t move to drafts:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static load(Landroid/content/Context;Lcom/android/mms/ui/ComposeMessage;Landroid/net/Uri;Z)Lcom/android/mms/data/WorkingMessage;
    .locals 6
    .parameter "context"
    .parameter "activity"
    .parameter "uri"
    .parameter "checkCRMode"

    .prologue
    const-string v5, "Mms/WorkingMessage"

    .line 265
    new-instance v1, Lcom/android/mms/data/WorkingMessage;

    invoke-direct {v1, p0, p1}, Lcom/android/mms/data/WorkingMessage;-><init>(Landroid/content/Context;Lcom/android/mms/ui/ComposeMessage;)V

    .line 267
    .local v1, msg:Lcom/android/mms/data/WorkingMessage;
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Landroid/provider/Telephony$Mms$Draft;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 268
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v2

    .line 270
    .local v2, persister:Lcom/google/android/mms/pdu/PduPersister;
    const-string v3, "Mms/WorkingMessage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "load with CRMode : moving to drafts"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    :try_start_0
    sget-object v3, Landroid/provider/Telephony$Mms$Draft;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, p2, v3}, Lcom/google/android/mms/pdu/PduPersister;->move(Landroid/net/Uri;Landroid/net/Uri;)Landroid/net/Uri;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p2

    .line 280
    .end local v2           #persister:Lcom/google/android/mms/pdu/PduPersister;
    :cond_0
    invoke-direct {v1, p2, p3}, Lcom/android/mms/data/WorkingMessage;->loadFromUri(Landroid/net/Uri;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 284
    :cond_1
    :goto_0
    return-object v1

    .line 274
    .restart local v2       #persister:Lcom/google/android/mms/pdu/PduPersister;
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 275
    .local v0, e:Lcom/google/android/mms/MmsException;
    const-string v3, "Mms/WorkingMessage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t move to drafts:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static loadDraft(Landroid/content/Context;Lcom/android/mms/ui/ComposeMessage;Lcom/android/mms/data/Conversation;)Lcom/android/mms/data/WorkingMessage;
    .locals 2
    .parameter "context"
    .parameter "activity"
    .parameter "conv"

    .prologue
    .line 401
    new-instance v0, Lcom/android/mms/data/WorkingMessage;

    invoke-direct {v0, p0, p1}, Lcom/android/mms/data/WorkingMessage;-><init>(Landroid/content/Context;Lcom/android/mms/ui/ComposeMessage;)V

    .line 402
    .local v0, msg:Lcom/android/mms/data/WorkingMessage;
    invoke-direct {v0, p2}, Lcom/android/mms/data/WorkingMessage;->loadFromConversation(Lcom/android/mms/data/Conversation;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 405
    :goto_0
    return-object v1

    :cond_0
    invoke-static {p0, p1}, Lcom/android/mms/data/WorkingMessage;->createEmpty(Landroid/content/Context;Lcom/android/mms/ui/ComposeMessage;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v1

    goto :goto_0
.end method

.method private loadFromConversation(Lcom/android/mms/data/Conversation;)Z
    .locals 9
    .parameter "conv"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 410
    const-string v4, "Mms/WorkingMessage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "loadFromConversation(),conv="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    invoke-virtual {p1}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v1

    .line 413
    .local v1, threadId:J
    const-wide/16 v4, 0x0

    cmp-long v4, v1, v4

    if-gtz v4, :cond_0

    move v4, v7

    .line 440
    :goto_0
    return v4

    .line 418
    :cond_0
    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    invoke-direct {p0, p1}, Lcom/android/mms/data/WorkingMessage;->readDraftSmsMessage(Lcom/android/mms/data/Conversation;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    .line 419
    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    aget-object v4, v4, v7

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    move v4, v8

    .line 420
    goto :goto_0

    .line 424
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 425
    .local v0, sb:Ljava/lang/StringBuilder;
    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-static {v4, v1, v2, v0}, Lcom/android/mms/data/WorkingMessage;->readDraftMmsMessage(Landroid/content/Context;JLjava/lang/StringBuilder;)Landroid/net/Uri;

    move-result-object v3

    .line 426
    .local v3, uri:Landroid/net/Uri;
    if-eqz v3, :cond_3

    .line 427
    invoke-direct {p0, v3}, Lcom/android/mms/data/WorkingMessage;->loadFromUri(Landroid/net/Uri;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 430
    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v4, v3}, Lcom/android/mms/data/WorkingMessage;->loadRecipients(Landroid/content/Context;Landroid/net/Uri;)V

    .line 433
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_2

    .line 434
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v7}, Lcom/android/mms/data/WorkingMessage;->setSubject(Ljava/lang/CharSequence;Z)V

    :cond_2
    move v4, v8

    .line 436
    goto :goto_0

    :cond_3
    move v4, v7

    .line 440
    goto :goto_0
.end method

.method private loadFromUri(Landroid/net/Uri;)Z
    .locals 6
    .parameter "uri"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 342
    const-string v1, "Mms/WorkingMessage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadFromUri:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    :try_start_0
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/android/mms/model/SlideshowModel;->createFromMessageUri(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/mms/model/SlideshowModel;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 351
    iput-object p1, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    .line 354
    invoke-direct {p0}, Lcom/android/mms/data/WorkingMessage;->syncTextFromSlideshow()V

    .line 355
    invoke-virtual {p0, v4}, Lcom/android/mms/data/WorkingMessage;->correctAttachmentState(Z)V

    move v1, v5

    .line 357
    :goto_0
    return v1

    .line 346
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 347
    .local v0, e:Lcom/google/android/mms/MmsException;
    const-string v1, "Couldn\'t load URI %s"

    new-array v2, v5, [Ljava/lang/Object;

    aput-object p1, v2, v4

    invoke-static {v1, v2}, Lcom/android/mms/LogTag;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    move v1, v4

    .line 348
    goto :goto_0
.end method

.method private loadFromUri(Landroid/net/Uri;Z)Z
    .locals 8
    .parameter "uri"
    .parameter "checkCRMode"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 363
    const-string v3, "Mms/WorkingMessage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadFromUri with CRMode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    :try_start_0
    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-static {v3, p1, p2}, Lcom/android/mms/model/SlideshowModel;->createFromPduBody(Landroid/content/Context;Landroid/net/Uri;Z)Lcom/android/mms/model/SlideshowModel;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    .line 366
    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v3}, Lcom/android/mms/model/SlideshowModel;->getCurrentMessageSize()I

    move-result v3

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxContentsSize()I

    move-result v4

    if-le v3, v4, :cond_0

    .line 368
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    .line 369
    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/mms/model/SlideshowModel;->createNew(Landroid/content/Context;)Lcom/android/mms/model/SlideshowModel;

    move-result-object v2

    .line 370
    .local v2, slideshow:Lcom/android/mms/model/SlideshowModel;
    new-instance v1, Lcom/android/mms/model/SlideModel;

    invoke-direct {v1, v2}, Lcom/android/mms/model/SlideModel;-><init>(Lcom/android/mms/model/SlideshowModel;)V

    .line 371
    .local v1, slide:Lcom/android/mms/model/SlideModel;
    invoke-virtual {v2, v1}, Lcom/android/mms/model/SlideshowModel;->add(Lcom/android/mms/model/SlideModel;)Z

    .line 373
    iput-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    .line 375
    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    const v5, 0x7f090045

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 384
    .end local v1           #slide:Lcom/android/mms/model/SlideModel;
    .end local v2           #slideshow:Lcom/android/mms/model/SlideshowModel;
    :cond_0
    iput-object p1, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    .line 387
    invoke-direct {p0}, Lcom/android/mms/data/WorkingMessage;->syncTextFromSlideshow()V

    .line 388
    invoke-virtual {p0, v6}, Lcom/android/mms/data/WorkingMessage;->correctAttachmentState(Z)V

    move v3, v7

    .line 390
    :goto_0
    return v3

    .line 379
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 380
    .local v0, e:Lcom/google/android/mms/MmsException;
    const-string v3, "Couldn\'t load URI %s"

    new-array v4, v7, [Ljava/lang/Object;

    aput-object p1, v4, v6

    invoke-static {v3, v4}, Lcom/android/mms/LogTag;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    move v3, v6

    .line 381
    goto :goto_0
.end method

.method private static makeSendReq(Lcom/android/mms/data/Conversation;Ljava/lang/CharSequence;)Lcom/google/android/mms/pdu/SendReq;
    .locals 7
    .parameter "conv"
    .parameter "subject"

    .prologue
    .line 1708
    invoke-virtual {p0}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/data/ContactList;->getNumbers()[Ljava/lang/String;

    move-result-object v0

    .line 1710
    .local v0, dests:[Ljava/lang/String;
    new-instance v2, Lcom/google/android/mms/pdu/SendReq;

    invoke-direct {v2}, Lcom/google/android/mms/pdu/SendReq;-><init>()V

    .line 1711
    .local v2, req:Lcom/google/android/mms/pdu/SendReq;
    invoke-static {v0}, Lcom/google/android/mms/pdu/EncodedStringValue;->encodeStrings([Ljava/lang/String;)[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v1

    .line 1712
    .local v1, encodedNumbers:[Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v1, :cond_0

    .line 1713
    invoke-virtual {v2, v1}, Lcom/google/android/mms/pdu/SendReq;->setTo([Lcom/google/android/mms/pdu/EncodedStringValue;)V

    .line 1716
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1717
    new-instance v3, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/google/android/mms/pdu/SendReq;->setSubject(Lcom/google/android/mms/pdu/EncodedStringValue;)V

    .line 1720
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Lcom/google/android/mms/pdu/SendReq;->setDate(J)V

    .line 1722
    return-object v2
.end method

.method private preSendSmsWorker(Lcom/android/mms/data/Conversation;Ljava/lang/String;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 1416
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/common/userhappiness/UserHappinessSignals;->userAcceptedImeText(Landroid/content/Context;)V

    .line 1418
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mStatusListener:Lcom/android/mms/data/WorkingMessage$MessageStatusListener;

    invoke-interface {v0}, Lcom/android/mms/data/WorkingMessage$MessageStatusListener;->onPreMessageSent()V

    .line 1424
    invoke-virtual {p1}, Lcom/android/mms/data/Conversation;->ensureThreadId()J

    move-result-wide v0

    .line 1426
    invoke-virtual {p1}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/data/ContactList;->serialize()Ljava/lang/String;

    move-result-object v2

    .line 1445
    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mHandler:Landroid/os/Handler;

    if-eqz v3, :cond_0

    .line 1446
    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {v3, v6, v4, v6, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 1447
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 1455
    :goto_0
    invoke-direct {p0, p2, v2, v0, v1}, Lcom/android/mms/data/WorkingMessage;->sendSmsWorker(Ljava/lang/String;Ljava/lang/String;J)V

    .line 1458
    invoke-direct {p0, v0, v1}, Lcom/android/mms/data/WorkingMessage;->deleteDraftSmsMessage(J)V

    .line 1459
    return-void

    .line 1449
    :cond_0
    const-string v3, "Mms/WorkingMessage"

    const-string v4, "preSendSmsWorker Handler is null"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private prepareForSave(Z)V
    .locals 1
    .parameter "notify"

    .prologue
    .line 913
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/mms/data/WorkingMessage;->prepareForSave(ZZ)V

    .line 914
    return-void
.end method

.method private prepareForSave(ZZ)V
    .locals 1
    .parameter "notify"
    .parameter "removeSubject"

    .prologue
    .line 900
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->syncWorkingRecipients()V

    .line 902
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 903
    invoke-direct {p0}, Lcom/android/mms/data/WorkingMessage;->ensureSlideshow()V

    .line 904
    invoke-direct {p0}, Lcom/android/mms/data/WorkingMessage;->syncTextToSlideshow()V

    .line 905
    if-eqz p2, :cond_0

    .line 906
    invoke-direct {p0, p1}, Lcom/android/mms/data/WorkingMessage;->removeSubjectIfEmpty(Z)V

    .line 907
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/mms/data/WorkingMessage;->removeAttachmentIfEmpty(Z)V

    .line 908
    invoke-direct {p0, p1}, Lcom/android/mms/data/WorkingMessage;->removeLengthMMSIfNotOver(Z)V

    .line 910
    :cond_1
    return-void
.end method

.method private static readDraftMmsMessage(Landroid/content/Context;JLjava/lang/StringBuilder;)Landroid/net/Uri;
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 1673
    const-string v0, "Mms/WorkingMessage"

    const-string v1, "readDraftMmsMessage()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1676
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1678
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "thread_id = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1679
    sget-object v2, Landroid/provider/Telephony$Mms$Draft;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/mms/data/WorkingMessage;->MMS_DRAFT_PROJECTION:[Ljava/lang/String;

    move-object v0, p0

    move-object v6, v5

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1684
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1685
    sget-object v1, Landroid/provider/Telephony$Mms$Draft;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 1687
    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-static {v0, v2, v3}, Lcom/android/mms/ui/MessageUtils;->extractEncStrFromCursor(Landroid/database/Cursor;II)Ljava/lang/String;

    move-result-object v2

    .line 1689
    if-eqz v2, :cond_0

    .line 1690
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1693
    :cond_0
    invoke-static {}, Lcom/android/mms/util/DraftCache;->getInstance()Lcom/android/mms/util/DraftCache;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, p2, v3}, Lcom/android/mms/util/DraftCache;->setDraftState(JZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1697
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-object v0, v1

    .line 1700
    :goto_0
    return-object v0

    .line 1697
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-object v0, v5

    .line 1700
    goto :goto_0

    .line 1697
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method private readDraftSmsMessage(Lcom/android/mms/data/Conversation;)Ljava/lang/String;
    .locals 11
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x0

    const-string v9, "Mms/WorkingMessage"

    const-string v8, ""

    .line 1817
    invoke-virtual {p1}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v0

    .line 1820
    const-string v2, "Mms/WorkingMessage"

    const-string v2, "readDraftSmsMessage()"

    invoke-static {v9, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1823
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 1824
    const-string v0, ""

    move-object v0, v8

    .line 1868
    :goto_0
    return-object v0

    .line 1827
    :cond_0
    sget-object v2, Landroid/provider/Telephony$Sms$Conversations;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 1828
    const-string v0, ""

    .line 1830
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/mms/data/WorkingMessage;->SMS_BODY_PROJECTION:[Ljava/lang/String;

    const-string v4, "type=3"

    move-object v6, v5

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1833
    if-eqz v0, :cond_4

    .line 1835
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1836
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 1837
    const/4 v2, 0x1

    move v10, v2

    move-object v2, v1

    move v1, v10

    .line 1840
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move v0, v1

    move-object v1, v2

    .line 1847
    :goto_2
    if-eqz v0, :cond_1

    .line 1852
    invoke-direct {p0, p1}, Lcom/android/mms/data/WorkingMessage;->asyncDeleteDraftSmsMessage(Lcom/android/mms/data/Conversation;)V

    .line 1861
    invoke-virtual {p1, v7}, Lcom/android/mms/data/Conversation;->setDraftState(Z)V

    .line 1863
    :cond_1
    invoke-virtual {p1}, Lcom/android/mms/data/Conversation;->getMessageCount()I

    move-result v0

    if-nez v0, :cond_2

    .line 1864
    const-string v0, "Mms/WorkingMessage"

    const-string v0, "readDraftSmsMessage calling clearThreadId"

    invoke-static {v9, v0}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1865
    invoke-virtual {p1}, Lcom/android/mms/data/Conversation;->clearThreadId()V

    :cond_2
    move-object v0, v1

    .line 1868
    goto :goto_0

    .line 1840
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_3
    move v1, v7

    move-object v2, v8

    goto :goto_1

    :cond_4
    move v0, v7

    move-object v1, v8

    goto :goto_2
.end method

.method private removeAttachmentIfEmpty(Z)V
    .locals 2
    .parameter "notify"

    .prologue
    .line 885
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->hasAttachment()Z

    move-result v1

    invoke-direct {p0, v0, v1, p1}, Lcom/android/mms/data/WorkingMessage;->updateState(IZZ)V

    .line 886
    return-void
.end method

.method private removeLengthMMSIfNotOver(Z)V
    .locals 2
    .parameter "notify"

    .prologue
    .line 890
    const/16 v0, 0x8

    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->isLengthRequiresMMS()Z

    move-result v1

    invoke-direct {p0, v0, v1, p1}, Lcom/android/mms/data/WorkingMessage;->updateState(IZZ)V

    .line 891
    return-void
.end method

.method private removeSubjectIfEmpty(Z)V
    .locals 1
    .parameter "notify"

    .prologue
    .line 878
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->hasSubject()Z

    move-result v0

    if-nez v0, :cond_0

    .line 879
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/mms/data/WorkingMessage;->setSubject(Ljava/lang/CharSequence;Z)V

    .line 881
    :cond_0
    return-void
.end method

.method private sendMmsWorker(Lcom/android/mms/data/Conversation;Landroid/net/Uri;Lcom/google/android/mms/pdu/PduPersister;Lcom/android/mms/model/SlideshowModel;Lcom/google/android/mms/pdu/SendReq;)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1483
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/common/userhappiness/UserHappinessSignals;->userAcceptedImeText(Landroid/content/Context;)V

    .line 1486
    const/4 v7, 0x0

    .line 1488
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/Telephony$Mms$Outbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/mms/data/WorkingMessage;->MMS_OUTBOX_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 1490
    if-eqz v0, :cond_2

    .line 1491
    :try_start_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxSizeScaleForPendingMmsAllowed()I

    move-result v1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxMessageSize()I

    move-result v2

    mul-int/2addr v1, v2

    int-to-long v1, v1

    .line 1493
    const-wide/16 v3, 0x0

    .line 1494
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1495
    const/4 v5, 0x1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    add-long/2addr v3, v5

    goto :goto_0

    .line 1497
    :cond_0
    cmp-long v1, v3, v1

    if-ltz v1, :cond_2

    .line 1498
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->unDiscard()V

    .line 1499
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mStatusListener:Lcom/android/mms/data/WorkingMessage$MessageStatusListener;

    invoke-interface {v1}, Lcom/android/mms/data/WorkingMessage$MessageStatusListener;->onMaxPendingMessagesReached()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1504
    if-eqz v0, :cond_1

    .line 1505
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1606
    :cond_1
    :goto_1
    return-void

    .line 1504
    :cond_2
    if-eqz v0, :cond_3

    .line 1505
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1508
    :cond_3
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mStatusListener:Lcom/android/mms/data/WorkingMessage$MessageStatusListener;

    invoke-interface {v0}, Lcom/android/mms/data/WorkingMessage$MessageStatusListener;->onPreMessageSent()V

    .line 1512
    invoke-virtual {p1}, Lcom/android/mms/data/Conversation;->ensureThreadId()J

    move-result-wide v0

    .line 1516
    const-string v2, "Mms/WorkingMessage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendMmsWorker: update draft MMS message "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1524
    invoke-virtual {p4}, Lcom/android/mms/model/SlideshowModel;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/mms/model/SlideModel;

    .line 1525
    invoke-virtual {p1}, Lcom/android/mms/model/SlideModel;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/mms/model/MediaModel;

    .line 1526
    invoke-virtual {p1}, Lcom/android/mms/model/MediaModel;->getSrc()Ljava/lang/String;

    move-result-object v4

    .line 1527
    const/4 v5, 0x0

    move v8, v5

    move-object v5, v4

    move v4, v8

    :goto_3
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v4, v6, :cond_8

    .line 1528
    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x21

    if-lt v6, v7, :cond_5

    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x7e

    if-le v6, v7, :cond_6

    .line 1529
    :cond_5
    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x5f

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5

    .line 1527
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 1504
    :catchall_0
    move-exception v0

    move-object v1, v7

    :goto_4
    if-eqz v1, :cond_7

    .line 1505
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v0

    .line 1532
    :cond_8
    invoke-virtual {p1, v5}, Lcom/android/mms/model/MediaModel;->setSrc(Ljava/lang/String;)V

    goto :goto_2

    .line 1535
    :cond_9
    invoke-virtual {p4}, Lcom/android/mms/model/SlideshowModel;->getRawAttachmentsSize()I

    move-result v2

    if-lez v2, :cond_d

    .line 1536
    invoke-virtual {p4}, Lcom/android/mms/model/SlideshowModel;->getRawAttachmentsList()Ljava/util/ArrayList;

    move-result-object v2

    .line 1537
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/mms/model/AttachmentModel;

    .line 1538
    invoke-virtual {p1}, Lcom/android/mms/model/AttachmentModel;->getSrc()Ljava/lang/String;

    move-result-object v3

    .line 1539
    const/4 v4, 0x0

    move v8, v4

    move-object v4, v3

    move v3, v8

    :goto_6
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_c

    .line 1540
    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x21

    if-lt v5, v6, :cond_a

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x7e

    if-le v5, v6, :cond_b

    .line 1541
    :cond_a
    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x5f

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    .line 1539
    :cond_b
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 1544
    :cond_c
    invoke-virtual {p1, v4}, Lcom/android/mms/model/AttachmentModel;->setSrc(Ljava/lang/String;)V

    goto :goto_5

    .line 1549
    :cond_d
    if-nez p2, :cond_f

    .line 1551
    invoke-static {p3, p5, p4}, Lcom/android/mms/data/WorkingMessage;->createDraftMmsMessage(Lcom/google/android/mms/pdu/PduPersister;Lcom/google/android/mms/pdu/SendReq;Lcom/android/mms/model/SlideshowModel;)Landroid/net/Uri;

    move-result-object v2

    .line 1558
    :goto_7
    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mHandler:Landroid/os/Handler;

    if-eqz v3, :cond_10

    .line 1559
    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v3, v4, v5, v6, v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 1560
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 1567
    :goto_8
    invoke-direct {p0, v0, v1}, Lcom/android/mms/data/WorkingMessage;->deleteDraftSmsMessage(J)V

    .line 1587
    new-instance v3, Lcom/android/mms/transaction/MmsMessageSender;

    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-virtual {p4}, Lcom/android/mms/model/SlideshowModel;->getCurrentMessageSize()I

    move-result v5

    int-to-long v5, v5

    invoke-direct {v3, v4, v2, v5, v6}, Lcom/android/mms/transaction/MmsMessageSender;-><init>(Landroid/content/Context;Landroid/net/Uri;J)V

    .line 1590
    :try_start_2
    invoke-interface {v3, v0, v1}, Lcom/android/mms/transaction/MessageSender;->sendMessage(J)Z

    move-result v3

    if-nez v3, :cond_e

    .line 1593
    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v3, v4, v2, v5, v6}, Landroid/database/sqlite/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1597
    :cond_e
    invoke-static {}, Lcom/android/mms/util/DraftCache;->getInstance()Lcom/android/mms/util/DraftCache;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v1, v4}, Lcom/android/mms/util/DraftCache;->setDraftState(JZ)V

    .line 1600
    invoke-static {}, Lcom/android/mms/util/Recycler;->getMmsRecycler()Lcom/android/mms/util/Recycler$MmsRecycler;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4, v0, v1}, Lcom/android/mms/util/Recycler$MmsRecycler;->deleteOldMessagesByThreadId(Landroid/content/Context;J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1605
    :goto_9
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mStatusListener:Lcom/android/mms/data/WorkingMessage$MessageStatusListener;

    invoke-interface {v0}, Lcom/android/mms/data/WorkingMessage$MessageStatusListener;->onMessageSent()V

    goto/16 :goto_1

    .line 1554
    :cond_f
    invoke-static {p2, p3, p4, p5}, Lcom/android/mms/data/WorkingMessage;->updateDraftMmsMessage(Landroid/net/Uri;Lcom/google/android/mms/pdu/PduPersister;Lcom/android/mms/model/SlideshowModel;Lcom/google/android/mms/pdu/SendReq;)V

    move-object v2, p2

    goto :goto_7

    .line 1562
    :cond_10
    const-string v3, "Mms/WorkingMessage"

    const-string v4, "sendMmsWorker Handler is null"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 1601
    :catch_0
    move-exception v3

    .line 1602
    const-string v4, "Mms/WorkingMessage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to send message: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", threadId="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_9

    .line 1504
    :catchall_1
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    goto/16 :goto_4
.end method

.method private sendSmsWorker(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const-string v6, "Mms/WorkingMessage"

    .line 1462
    const-string v0, ";"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1465
    const-string v0, "Mms/WorkingMessage"

    const-string v0, "sendSmsWorker()"

    invoke-static {v6, v0}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1467
    new-instance v0, Lcom/android/mms/transaction/SmsMessageSender;

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    move-object v3, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/transaction/SmsMessageSender;-><init>(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;J)V

    .line 1469
    :try_start_0
    invoke-interface {v0, p3, p4}, Lcom/android/mms/transaction/MessageSender;->sendMessage(J)Z

    .line 1472
    invoke-static {}, Lcom/android/mms/util/Recycler;->getSmsRecycler()Lcom/android/mms/util/Recycler$SmsRecycler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p3, p4}, Lcom/android/mms/util/Recycler$SmsRecycler;->deleteOldMessagesByThreadId(Landroid/content/Context;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1477
    :goto_0
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mStatusListener:Lcom/android/mms/data/WorkingMessage$MessageStatusListener;

    invoke-interface {v0}, Lcom/android/mms/data/WorkingMessage$MessageStatusListener;->onMessageSent()V

    .line 1478
    return-void

    .line 1473
    :catch_0
    move-exception v0

    .line 1474
    const-string v1, "Mms/WorkingMessage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to send SMS message, threadId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private setText(ILjava/lang/CharSequence;)V
    .locals 2
    .parameter "slideIndex"
    .parameter "s"

    .prologue
    .line 473
    const-string v0, "Mms/WorkingMessage"

    const-string v1, "setText()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    aput-object p2, v0, p1

    .line 475
    return-void
.end method

.method private static stateString(I)Ljava/lang/String;
    .locals 3
    .parameter "state"

    .prologue
    .line 1258
    if-nez p0, :cond_0

    .line 1259
    const-string v1, "<none>"

    .line 1274
    :goto_0
    return-object v1

    .line 1261
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1262
    .local v0, sb:Ljava/lang/StringBuilder;
    and-int/lit8 v1, p0, 0x1

    if-lez v1, :cond_1

    .line 1263
    const-string v1, "RECIPIENTS_REQUIRE_MMS | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1264
    :cond_1
    and-int/lit8 v1, p0, 0x2

    if-lez v1, :cond_2

    .line 1265
    const-string v1, "HAS_SUBJECT | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1266
    :cond_2
    and-int/lit8 v1, p0, 0x4

    if-lez v1, :cond_3

    .line 1267
    const-string v1, "HAS_ATTACHMENT | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1268
    :cond_3
    and-int/lit8 v1, p0, 0x8

    if-lez v1, :cond_4

    .line 1269
    const-string v1, "LENGTH_REQUIRES_MMS | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1270
    :cond_4
    and-int/lit8 v1, p0, 0x10

    if-lez v1, :cond_5

    .line 1271
    const-string v1, "FORCE_MMS | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1273
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const/4 v2, 0x3

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1274
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private syncTextFromSlideshow()V
    .locals 5

    .prologue
    .line 863
    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v3}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 864
    const/4 v0, 0x0

    .local v0, i:I
    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v3}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v1

    .local v1, n:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 865
    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v3, v0}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v2

    .line 866
    .local v2, slide:Lcom/android/mms/model/SlideModel;
    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->hasText()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 867
    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    .line 864
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 872
    .end local v0           #i:I
    .end local v1           #n:I
    .end local v2           #slide:Lcom/android/mms/model/SlideModel;
    :cond_1
    return-void
.end method

.method private syncTextToSlideshow()V
    .locals 9

    .prologue
    .line 833
    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v5}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v5

    if-nez v5, :cond_1

    .line 855
    :cond_0
    return-void

    .line 836
    :cond_1
    const/4 v0, 0x0

    .line 837
    .local v0, i:I
    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v5}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v2

    .line 838
    .local v2, n:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 839
    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v5, v0}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v3

    .line 841
    .local v3, slide:Lcom/android/mms/model/SlideModel;
    invoke-virtual {v3}, Lcom/android/mms/model/SlideModel;->hasText()Z

    move-result v5

    if-nez v5, :cond_3

    .line 843
    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-static {v5}, Lcom/android/mms/ui/MessageUtils;->getCidTextIndex(Lcom/android/mms/model/SlideshowModel;)I

    move-result v1

    .line 844
    .local v1, index:I
    new-instance v4, Lcom/android/mms/model/TextModel;

    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    const-string v6, "text/plain"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "cid:text_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".txt"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v8}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/mms/model/LayoutModel;->getTextRegion()Lcom/android/mms/model/RegionModel;

    move-result-object v8

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/android/mms/model/TextModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/model/RegionModel;)V

    .line 846
    .local v4, textModel:Lcom/android/mms/model/TextModel;
    invoke-virtual {v3, v4}, Lcom/android/mms/model/SlideModel;->add(Lcom/android/mms/model/MediaModel;)Z

    .line 838
    .end local v1           #index:I
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 849
    .end local v4           #textModel:Lcom/android/mms/model/TextModel;
    :cond_3
    invoke-virtual {v3}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v4

    .line 850
    .restart local v4       #textModel:Lcom/android/mms/model/TextModel;
    invoke-virtual {v4}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_2

    .line 851
    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    aget-object v5, v5, v0

    invoke-virtual {v4, v5}, Lcom/android/mms/model/TextModel;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private static updateDraftMmsMessage(Landroid/net/Uri;Lcom/google/android/mms/pdu/PduPersister;Lcom/android/mms/model/SlideshowModel;Lcom/google/android/mms/pdu/SendReq;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const-string v3, "Mms/WorkingMessage"

    .line 1768
    const-string v0, "Mms/WorkingMessage"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateDraftMmsMessage uri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1770
    if-nez p0, :cond_0

    .line 1771
    const-string v0, "Mms/WorkingMessage"

    const-string v0, "updateDraftMmsMessage null uri"

    invoke-static {v3, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1800
    :goto_0
    return-void

    .line 1775
    :cond_0
    if-nez p3, :cond_1

    .line 1776
    const-string v0, "Mms/WorkingMessage"

    const-string v0, "updateDraftMmsMessage null sendReq"

    invoke-static {v3, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1783
    :cond_1
    if-nez p2, :cond_2

    .line 1784
    const-string v0, "Mms/WorkingMessage"

    const-string v0, "updateDraftMmsMessage slideshow null "

    invoke-static {v3, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1790
    :cond_2
    invoke-virtual {p1, p0, p3}, Lcom/google/android/mms/pdu/PduPersister;->updateHeaders(Landroid/net/Uri;Lcom/google/android/mms/pdu/SendReq;)V

    .line 1791
    invoke-virtual {p2}, Lcom/android/mms/model/SlideshowModel;->toPduBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v0

    .line 1794
    :try_start_0
    invoke-virtual {p1, p0, v0}, Lcom/google/android/mms/pdu/PduPersister;->updateParts(Landroid/net/Uri;Lcom/google/android/mms/pdu/PduBody;)V
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1799
    :goto_1
    invoke-virtual {p2, v0}, Lcom/android/mms/model/SlideshowModel;->sync(Lcom/google/android/mms/pdu/PduBody;)V

    goto :goto_0

    .line 1795
    :catch_0
    move-exception v1

    .line 1796
    const-string v1, "Mms/WorkingMessage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateDraftMmsMessage: cannot update message "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private updateDraftSmsMessage(JLjava/lang/String;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x3

    .line 1888
    const-string v0, "Mms/WorkingMessage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateDraftSmsMessage tid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", contents="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1892
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    .line 1902
    :goto_0
    return-void

    .line 1896
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 1897
    const-string v1, "thread_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1898
    const-string v1, "body"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1899
    const-string v1, "type"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1900
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, v2, v3, v0}, Landroid/database/sqlite/SqliteWrapper;->insert(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 1901
    invoke-direct {p0, p1, p2}, Lcom/android/mms/data/WorkingMessage;->asyncDeleteDraftMmsMessage(J)V

    goto :goto_0
.end method

.method private updateState(IZZ)V
    .locals 7
    .parameter "state"
    .parameter "on"
    .parameter "notify"

    .prologue
    const/16 v4, 0x10

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 1285
    sget-boolean v0, Lcom/android/mms/data/WorkingMessage;->sMmsEnabled:Z

    if-nez v0, :cond_1

    .line 1325
    :cond_0
    :goto_0
    return-void

    .line 1291
    :cond_1
    iget v6, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    .line 1292
    .local v6, oldState:I
    if-eqz p2, :cond_6

    .line 1293
    iget v0, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    .line 1300
    :goto_1
    iget v0, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    if-ne v0, v4, :cond_2

    and-int/lit8 v0, v6, -0x11

    if-lez v0, :cond_2

    .line 1301
    iput v5, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    .line 1303
    :cond_2
    if-ne p1, v4, :cond_3

    if-eqz p2, :cond_3

    .line 1304
    sput-boolean v3, Lcom/android/mms/data/WorkingMessage;->mForceMmsState:Z

    .line 1308
    :cond_3
    if-eqz p3, :cond_4

    .line 1309
    if-nez v6, :cond_7

    iget v0, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    if-eqz v0, :cond_7

    .line 1310
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mStatusListener:Lcom/android/mms/data/WorkingMessage$MessageStatusListener;

    invoke-interface {v0, v3}, Lcom/android/mms/data/WorkingMessage$MessageStatusListener;->onProtocolChanged(Z)V

    .line 1316
    :cond_4
    :goto_2
    if-eqz v6, :cond_5

    iget v0, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    if-eqz v0, :cond_5

    .line 1317
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    move-object v0, p0

    move-object v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/data/WorkingMessage;->deleteMmsMessage(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Lcom/android/mms/data/Conversation;Z)V

    .line 1318
    iput-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    .line 1321
    :cond_5
    iget v0, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    if-eq v6, v0, :cond_0

    .line 1323
    const-string v0, "Mms/WorkingMessage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p2, :cond_8

    const-string v2, "+"

    :goto_3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/android/mms/data/WorkingMessage;->stateString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    invoke-static {v2}, Lcom/android/mms/data/WorkingMessage;->stateString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1295
    :cond_6
    iget v0, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    goto :goto_1

    .line 1311
    :cond_7
    if-eqz v6, :cond_4

    iget v0, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    if-nez v0, :cond_4

    .line 1312
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mStatusListener:Lcom/android/mms/data/WorkingMessage$MessageStatusListener;

    invoke-interface {v0, v5}, Lcom/android/mms/data/WorkingMessage$MessageStatusListener;->onProtocolChanged(Z)V

    goto :goto_2

    .line 1323
    :cond_8
    const-string v2, "-"

    goto :goto_3
.end method


# virtual methods
.method public addSlide(I)Z
    .locals 12
    .parameter

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string v11, "cid:text_"

    const-string v10, "Mms/WorkingMessage"

    const-string v9, ".txt"

    .line 2248
    const-string v0, "Mms/WorkingMessage"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addSlide(),slideIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2250
    invoke-direct {p0}, Lcom/android/mms/data/WorkingMessage;->ensureSlideshow()V

    .line 2251
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-nez v0, :cond_0

    move v0, v7

    .line 2286
    :goto_0
    return v0

    .line 2254
    :cond_0
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v0

    if-ne v0, v8, :cond_2

    .line 2255
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0, v7}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v0

    .line 2256
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->hasText()Z

    move-result v1

    if-nez v1, :cond_2

    .line 2258
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-static {v1}, Lcom/android/mms/ui/MessageUtils;->getCidTextIndex(Lcom/android/mms/model/SlideshowModel;)I

    move-result v1

    .line 2259
    new-instance v2, Lcom/android/mms/model/TextModel;

    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    const-string v4, "text/plain"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cid:text_"

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ".txt"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v5}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/model/LayoutModel;->getTextRegion()Lcom/android/mms/model/RegionModel;

    move-result-object v5

    invoke-direct {v2, v3, v4, v1, v5}, Lcom/android/mms/model/TextModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/model/RegionModel;)V

    .line 2262
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    aget-object v1, v1, v7

    if-eqz v1, :cond_1

    .line 2263
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    aget-object v1, v1, v7

    invoke-virtual {v2, v1, v8}, Lcom/android/mms/model/TextModel;->setText(Ljava/lang/CharSequence;Z)V

    .line 2265
    :cond_1
    invoke-virtual {v0, v2}, Lcom/android/mms/model/SlideModel;->add(Lcom/android/mms/model/MediaModel;)Z

    .line 2268
    :cond_2
    new-instance v0, Lcom/android/mms/model/SlideModel;

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-direct {v0, v1}, Lcom/android/mms/model/SlideModel;-><init>(Lcom/android/mms/model/SlideshowModel;)V

    .line 2269
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-static {v1}, Lcom/android/mms/ui/MessageUtils;->getCidTextIndex(Lcom/android/mms/model/SlideshowModel;)I

    move-result v1

    .line 2270
    new-instance v2, Lcom/android/mms/model/TextModel;

    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    const-string v4, "text/plain"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cid:text_"

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ".txt"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v5}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/model/LayoutModel;->getTextRegion()Lcom/android/mms/model/RegionModel;

    move-result-object v5

    invoke-direct {v2, v3, v4, v1, v5}, Lcom/android/mms/model/TextModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/model/RegionModel;)V

    .line 2272
    invoke-virtual {v0, v2}, Lcom/android/mms/model/SlideModel;->add(Lcom/android/mms/model/MediaModel;)Z

    .line 2275
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v1}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v1

    if-ge v1, p1, :cond_3

    .line 2276
    const-string v1, "Mms/WorkingMessage"

    const-string v1, "inside mSlideshow.size()<slideIndex"

    invoke-static {v10, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2277
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v1, v0}, Lcom/android/mms/model/SlideshowModel;->add(Lcom/android/mms/model/SlideModel;)Z

    .line 2285
    :goto_1
    invoke-virtual {p0, v8}, Lcom/android/mms/data/WorkingMessage;->correctAttachmentState(Z)V

    move v0, v8

    .line 2286
    goto/16 :goto_0

    .line 2279
    :cond_3
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v1, p1, v0}, Lcom/android/mms/model/SlideshowModel;->add(ILcom/android/mms/model/SlideModel;)V

    goto :goto_1
.end method

.method public addWorkingRecipients(Lcom/android/mms/data/ContactList;)V
    .locals 8
    .parameter "numbers"

    .prologue
    .line 1158
    new-instance v1, Lcom/android/mms/data/ContactList;

    invoke-direct {v1}, Lcom/android/mms/data/ContactList;-><init>()V

    .line 1159
    .local v1, existedRecipients:Lcom/android/mms/data/ContactList;
    iget-object v6, p0, Lcom/android/mms/data/WorkingMessage;->mWorkingRecipients:Lcom/android/mms/data/ContactList;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/mms/data/WorkingMessage;->mWorkingRecipients:Lcom/android/mms/data/ContactList;

    invoke-virtual {v6}, Lcom/android/mms/data/ContactList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1160
    :cond_0
    new-instance v6, Lcom/android/mms/data/ContactList;

    invoke-direct {v6}, Lcom/android/mms/data/ContactList;-><init>()V

    iput-object v6, p0, Lcom/android/mms/data/WorkingMessage;->mWorkingRecipients:Lcom/android/mms/data/ContactList;

    .line 1161
    invoke-virtual {p1}, Lcom/android/mms/data/ContactList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/mms/data/Contact;

    .line 1162
    .local v5, number:Lcom/android/mms/data/Contact;
    iget-object v6, p0, Lcom/android/mms/data/WorkingMessage;->mWorkingRecipients:Lcom/android/mms/data/ContactList;

    invoke-virtual {v6}, Lcom/android/mms/data/ContactList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1163
    invoke-virtual {v1, v5}, Lcom/android/mms/data/ContactList;->add(Ljava/lang/Object;)Z

    .line 1164
    iget-object v6, p0, Lcom/android/mms/data/WorkingMessage;->mWorkingRecipients:Lcom/android/mms/data/ContactList;

    invoke-virtual {v6, v5}, Lcom/android/mms/data/ContactList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1166
    :cond_2
    invoke-virtual {v1}, Lcom/android/mms/data/ContactList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    .line 1167
    .local v0, existedRecipient:Lcom/android/mms/data/Contact;
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 1169
    iget-object v6, p0, Lcom/android/mms/data/WorkingMessage;->mWorkingRecipients:Lcom/android/mms/data/ContactList;

    invoke-virtual {v6, v5}, Lcom/android/mms/data/ContactList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1174
    .end local v0           #existedRecipient:Lcom/android/mms/data/Contact;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v5           #number:Lcom/android/mms/data/Contact;
    :cond_4
    iget-object v6, p0, Lcom/android/mms/data/WorkingMessage;->mWorkingRecipients:Lcom/android/mms/data/ContactList;

    invoke-virtual {v6}, Lcom/android/mms/data/ContactList;->clone()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #existedRecipients:Lcom/android/mms/data/ContactList;
    check-cast v1, Lcom/android/mms/data/ContactList;

    .line 1175
    .restart local v1       #existedRecipients:Lcom/android/mms/data/ContactList;
    invoke-virtual {p1}, Lcom/android/mms/data/ContactList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/mms/data/Contact;

    .line 1176
    .restart local v5       #number:Lcom/android/mms/data/Contact;
    const/4 v4, 0x0

    .line 1177
    .local v4, isAdded:I
    invoke-virtual {v1}, Lcom/android/mms/data/ContactList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3       #i$:Ljava/util/Iterator;
    :cond_6
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    .line 1178
    .restart local v0       #existedRecipient:Lcom/android/mms/data/Contact;
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1179
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 1181
    .end local v0           #existedRecipient:Lcom/android/mms/data/Contact;
    :cond_7
    if-nez v4, :cond_5

    .line 1182
    iget-object v6, p0, Lcom/android/mms/data/WorkingMessage;->mWorkingRecipients:Lcom/android/mms/data/ContactList;

    invoke-virtual {v6, v5}, Lcom/android/mms/data/ContactList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1185
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #isAdded:I
    .end local v5           #number:Lcom/android/mms/data/Contact;
    :cond_8
    invoke-virtual {v1}, Lcom/android/mms/data/ContactList;->clear()V

    .line 1186
    return-void
.end method

.method public checkMaxSlide(II)Z
    .locals 2
    .parameter "location"
    .parameter "type"

    .prologue
    .line 2021
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v0

    sget v1, Lcom/android/mms/ui/MessageUtils;->MESSAGE_MAX_SLIDE_NUM:I

    if-le v0, v1, :cond_0

    .line 2022
    const/4 v0, 0x1

    .line 2024
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public correctAttachmentState(Z)V
    .locals 9
    .parameter "notify"

    .prologue
    const/4 v3, 0x5

    const/4 v1, 0x1

    const/4 v8, 0x4

    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 290
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v7

    .line 294
    .local v7, slideCount:I
    if-nez v7, :cond_2

    .line 296
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->getRawAttachmentsSize()I

    move-result v0

    if-lez v0, :cond_1

    .line 297
    iput v3, p0, Lcom/android/mms/data/WorkingMessage;->mAttachmentType:I

    .line 338
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->hasAttachment()Z

    move-result v0

    invoke-direct {p0, v8, v0, p1}, Lcom/android/mms/data/WorkingMessage;->updateState(IZZ)V

    .line 339
    return-void

    .line 299
    :cond_1
    iput v5, p0, Lcom/android/mms/data/WorkingMessage;->mAttachmentType:I

    .line 300
    iput-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    .line 301
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    invoke-direct {p0, v0, v2, v2}, Lcom/android/mms/data/WorkingMessage;->asyncDelete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 303
    iput-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    goto :goto_0

    .line 306
    :cond_2
    if-le v7, v1, :cond_3

    .line 307
    iput v8, p0, Lcom/android/mms/data/WorkingMessage;->mAttachmentType:I

    goto :goto_0

    .line 309
    :cond_3
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0, v5}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v6

    .line 310
    .local v6, slide:Lcom/android/mms/model/SlideModel;
    invoke-virtual {v6}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 311
    iput v1, p0, Lcom/android/mms/data/WorkingMessage;->mAttachmentType:I

    goto :goto_0

    .line 312
    :cond_4
    invoke-virtual {v6}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 313
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/mms/data/WorkingMessage;->mAttachmentType:I

    goto :goto_0

    .line 314
    :cond_5
    invoke-virtual {v6}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 315
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/mms/data/WorkingMessage;->mAttachmentType:I

    goto :goto_0

    .line 317
    :cond_6
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->hasSubjectField()Z

    move-result v0

    if-nez v0, :cond_9

    .line 318
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->getRawAttachmentsSize()I

    move-result v0

    if-lez v0, :cond_7

    .line 319
    iput v3, p0, Lcom/android/mms/data/WorkingMessage;->mAttachmentType:I

    goto :goto_0

    .line 320
    :cond_7
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->isLengthRequiresMMS()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 321
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->recipienHasEmail()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 322
    iput v8, p0, Lcom/android/mms/data/WorkingMessage;->mAttachmentType:I

    goto :goto_0

    .line 324
    :cond_8
    iput v5, p0, Lcom/android/mms/data/WorkingMessage;->mAttachmentType:I

    .line 325
    iput-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    .line 326
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 327
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    move-object v0, p0

    move-object v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/data/WorkingMessage;->deleteMmsMessage(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Lcom/android/mms/data/Conversation;Z)V

    .line 328
    iput-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    goto :goto_0

    .line 333
    :cond_9
    iput v5, p0, Lcom/android/mms/data/WorkingMessage;->mAttachmentType:I

    goto :goto_0
.end method

.method public createSlideshow()Lcom/android/mms/model/SlideshowModel;
    .locals 1

    .prologue
    .line 2016
    invoke-direct {p0}, Lcom/android/mms/data/WorkingMessage;->ensureSlideshow()V

    .line 2017
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    return-object v0
.end method

.method public declared-synchronized discard()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const-string v0, "Mms/WorkingMessage"

    .line 1040
    monitor-enter p0

    :try_start_0
    const-string v0, "Mms/WorkingMessage"

    const-string v1, "discard()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1042
    iget-boolean v0, p0, Lcom/android/mms/data/WorkingMessage;->mDiscarded:Z

    if-ne v0, v2, :cond_0

    .line 1043
    const-string v0, "Mms/WorkingMessage"

    const-string v1, "already discarded"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1061
    :goto_0
    monitor-exit p0

    return-void

    .line 1048
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/android/mms/data/WorkingMessage;->mDiscarded:Z

    .line 1051
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    if-eqz v0, :cond_1

    .line 1054
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    const-string v2, "msg_box=3"

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/data/WorkingMessage;->deleteMmsMessage(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Lcom/android/mms/data/Conversation;Z)V

    .line 1060
    :goto_1
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/data/Conversation;->setDraftState(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1040
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1056
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-direct {p0, v0}, Lcom/android/mms/data/WorkingMessage;->asyncDeleteDraftSmsMessage(Lcom/android/mms/data/Conversation;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public expectedMessageSize()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 2298
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2300
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v0, :cond_d

    .line 2301
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->getCurrentMessageSize()I

    move-result v0

    add-int/2addr v0, v7

    .line 2305
    :goto_0
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->hasSubjectField()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->getSubject()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->getSubject()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 2306
    add-int/lit8 v0, v0, 0x7d

    .line 2309
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2310
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->getWorkingRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 2311
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->getWorkingRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/data/ContactList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v3, v0

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    .line 2312
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v0

    .line 2313
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v3

    move v3, v0

    .line 2314
    goto :goto_1

    :cond_1
    move v0, v3

    .line 2334
    :cond_2
    :goto_2
    const/16 v2, 0x36

    .line 2336
    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v3, :cond_9

    .line 2337
    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v3}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v3

    move v4, v0

    move v0, v7

    .line 2338
    :goto_3
    if-ge v0, v3, :cond_7

    .line 2339
    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v5, v0}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v5

    .line 2341
    invoke-virtual {v5}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 2343
    invoke-virtual {v5}, Lcom/android/mms/model/SlideModel;->getImage()Lcom/android/mms/model/ImageModel;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/mms/model/ImageModel;->getSrc()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    .line 2344
    add-int/2addr v6, v2

    add-int/lit8 v6, v6, 0x28

    add-int/2addr v4, v6

    .line 2346
    :cond_3
    invoke-virtual {v5}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 2348
    invoke-virtual {v5}, Lcom/android/mms/model/SlideModel;->getVideo()Lcom/android/mms/model/VideoModel;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/mms/model/VideoModel;->getSrc()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    .line 2349
    add-int/2addr v6, v2

    add-int/lit8 v6, v6, 0x28

    add-int/2addr v4, v6

    .line 2351
    :cond_4
    invoke-virtual {v5}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 2353
    invoke-virtual {v5}, Lcom/android/mms/model/SlideModel;->getAudio()Lcom/android/mms/model/AudioModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/model/AudioModel;->getSrc()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    .line 2354
    add-int/2addr v5, v2

    add-int/lit8 v5, v5, 0x1c

    add-int/2addr v4, v5

    .line 2338
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 2315
    :cond_6
    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 2316
    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/data/ContactList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v3, v0

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    .line 2317
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v0

    .line 2318
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v3

    move v3, v0

    .line 2319
    goto :goto_4

    .line 2360
    :cond_7
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->getRawAttachmentsSize()I

    move-result v0

    if-lez v0, :cond_8

    .line 2361
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->getRawAttachmentsSize()I

    move-result v0

    .line 2362
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->getRawAttachmentsNameList()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v4

    move v4, v3

    move v3, v7

    .line 2363
    :goto_5
    if-ge v3, v0, :cond_8

    .line 2365
    add-int/lit16 v5, v2, 0xe4

    add-int/lit16 v4, v4, 0x11a

    .line 2363
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_8
    move v0, v4

    .line 2369
    :cond_9
    if-nez v0, :cond_a

    .line 2370
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2379
    :goto_6
    const-string v0, "KB"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2381
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2372
    :cond_a
    add-int/lit16 v0, v0, 0x3ff

    div-int/lit16 v0, v0, 0x400

    .line 2373
    if-nez v0, :cond_b

    .line 2374
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 2376
    :cond_b
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_6

    :cond_c
    move v0, v3

    goto/16 :goto_2

    :cond_d
    move v0, v7

    goto/16 :goto_0
.end method

.method public getMessageUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 2386
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getRawAttachmentsNameList()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2007
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v0, :cond_0

    .line 2008
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->getAttachmentList()Ljava/lang/String;

    move-result-object v0

    .line 2010
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSlideshow()Lcom/android/mms/model/SlideshowModel;
    .locals 1

    .prologue
    .line 764
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    return-object v0
.end method

.method public getSubject()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 811
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mSubject:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getText(I)Ljava/lang/CharSequence;
    .locals 1
    .parameter "slideIndex"

    .prologue
    .line 527
    if-ltz p1, :cond_0

    sget v0, Lcom/android/mms/ui/MessageUtils;->MESSAGE_MAX_SLIDE_NUM:I

    if-ge p1, v0, :cond_0

    .line 528
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    aget-object v0, v0, p1

    .line 530
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getWorkingRecipients()Lcom/android/mms/data/ContactList;
    .locals 1

    .prologue
    .line 1189
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mWorkingRecipients:Lcom/android/mms/data/ContactList;

    if-eqz v0, :cond_0

    .line 1190
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mWorkingRecipients:Lcom/android/mms/data/ContactList;

    .line 1192
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasAttachment()Z
    .locals 1

    .prologue
    .line 721
    iget v0, p0, Lcom/android/mms/data/WorkingMessage;->mAttachmentType:I

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->getRawAttachmentsSize()I

    move-result v0

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSlideshow()Z
    .locals 2

    .prologue
    .line 772
    iget v0, p0, Lcom/android/mms/data/WorkingMessage;->mAttachmentType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSubject()Z
    .locals 1

    .prologue
    .line 821
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mSubject:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mSubject:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSubjectField()Z
    .locals 1

    .prologue
    .line 825
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mSubject:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    and-int/lit8 v0, v0, 0x2

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasText()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 541
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    aget-object v0, v0, v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public isAddPossible(ILcom/android/mms/model/SlideModel;)Z
    .locals 3
    .parameter "type"
    .parameter "slide"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2028
    if-ne p1, v2, :cond_1

    .line 2029
    invoke-virtual {p2}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_0
    move v0, v1

    .line 2041
    :goto_0
    return v0

    .line 2032
    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    .line 2033
    invoke-virtual {p2}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p2}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_2
    move v0, v1

    .line 2034
    goto :goto_0

    .line 2036
    :cond_3
    const/4 v0, 0x2

    if-ne p1, v0, :cond_5

    .line 2037
    invoke-virtual {p2}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p2}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p2}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    move v0, v1

    .line 2038
    goto :goto_0

    :cond_5
    move v0, v2

    .line 2041
    goto :goto_0
.end method

.method public isDiscarded()Z
    .locals 1

    .prologue
    .line 1073
    iget-boolean v0, p0, Lcom/android/mms/data/WorkingMessage;->mDiscarded:Z

    return v0
.end method

.method public isFakeMmsForDraft()Z
    .locals 1

    .prologue
    .line 699
    iget v0, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    and-int/lit8 v0, v0, 0x10

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLengthRequiresMMS()Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 734
    sget v0, Lcom/android/mms/ui/ComposeMessage;->mEncodingType:I

    .line 735
    .local v0, encodingType:I
    const/4 v2, 0x0

    .line 736
    .local v2, params:[I
    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    aget-object v3, v3, v5

    if-eqz v3, :cond_1

    .line 738
    if-nez v0, :cond_0

    .line 739
    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    aget-object v3, v3, v5

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/mms/ui/MessageUtils;->isContainKoreanChar(Ljava/lang/String;)Z

    move-result v1

    .line 740
    .local v1, isKoreanChar:Z
    if-eqz v1, :cond_0

    .line 741
    const/4 v0, 0x2

    .line 745
    .end local v1           #isKoreanChar:Z
    :cond_0
    if-ne v0, v6, :cond_2

    .line 746
    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    aget-object v3, v3, v5

    invoke-static {v3, v5, v0}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/CharSequence;ZI)[I

    move-result-object v2

    .line 753
    :cond_1
    :goto_0
    if-eqz v2, :cond_4

    aget v3, v2, v5

    invoke-static {}, Lcom/android/mms/MmsConfig;->getSmsToMmsTextThreshold()I

    move-result v4

    if-lt v3, v4, :cond_4

    move v3, v6

    .line 756
    :goto_1
    return v3

    .line 747
    :cond_2
    if-nez v0, :cond_3

    .line 748
    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    aget-object v3, v3, v5

    invoke-static {v3, v5, v0}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/CharSequence;ZI)[I

    move-result-object v2

    goto :goto_0

    .line 750
    :cond_3
    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    aget-object v3, v3, v5

    invoke-static {v3, v5}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)[I

    move-result-object v2

    goto :goto_0

    :cond_4
    move v3, v5

    .line 756
    goto :goto_1
.end method

.method public isWorthSaving()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 678
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->hasText()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->hasSubject()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->hasAttachment()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->hasSlideshow()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v1

    .line 689
    :goto_0
    return v0

    .line 685
    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->isFakeMmsForDraft()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 686
    goto :goto_0

    .line 689
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadRecipients(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 3
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 447
    const-string v1, "Mms/WorkingMessage"

    const-string v2, "loadRecipients()"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    invoke-static {p2, p1}, Lcom/android/mms/ui/MessageUtils;->getRecipientsFromPDU(Landroid/net/Uri;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 450
    .local v0, recipients:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 451
    invoke-virtual {p0, v0}, Lcom/android/mms/data/WorkingMessage;->setRecipients(Ljava/lang/String;)V

    .line 453
    :cond_0
    return-void
.end method

.method public readStateFromBundle(Landroid/os/Bundle;)V
    .locals 5
    .parameter "bundle"

    .prologue
    const/4 v4, 0x0

    .line 1101
    if-nez p1, :cond_0

    .line 1116
    :goto_0
    return-void

    .line 1105
    :cond_0
    const-string v3, "subject"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1106
    .local v1, subject:Ljava/lang/String;
    invoke-virtual {p0, v1, v4}, Lcom/android/mms/data/WorkingMessage;->setSubject(Ljava/lang/CharSequence;Z)V

    .line 1108
    const-string v3, "msg_uri"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 1109
    .local v2, uri:Landroid/net/Uri;
    if-eqz v2, :cond_1

    .line 1110
    invoke-direct {p0, v2}, Lcom/android/mms/data/WorkingMessage;->loadFromUri(Landroid/net/Uri;)Z

    goto :goto_0

    .line 1113
    :cond_1
    const-string v3, "sms_body"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1114
    .local v0, body:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    aput-object v0, v3, v4

    goto :goto_0
.end method

.method public recipienHasEmail()Z
    .locals 1

    .prologue
    .line 1235
    iget v0, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    and-int/lit8 v0, v0, 0x1

    if-lez v0, :cond_0

    .line 1236
    const/4 v0, 0x1

    .line 1238
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeFakeMmsForDraft(Z)V
    .locals 2
    .parameter "notify"

    .prologue
    const/4 v1, 0x0

    .line 930
    sget-boolean v0, Lcom/android/mms/data/WorkingMessage;->mForceMmsState:Z

    if-nez v0, :cond_1

    .line 938
    :cond_0
    :goto_0
    return-void

    .line 933
    :cond_1
    sput-boolean v1, Lcom/android/mms/data/WorkingMessage;->mForceMmsState:Z

    .line 936
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->isFakeMmsForDraft()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 937
    const/16 v0, 0x10

    invoke-direct {p0, v0, v1, p1}, Lcom/android/mms/data/WorkingMessage;->updateState(IZZ)V

    goto :goto_0
.end method

.method public removeSlide(I)Z
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 2290
    const-string v0, "Mms/WorkingMessage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeSlide(),slideIndex"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2291
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0, p1}, Lcom/android/mms/model/SlideshowModel;->remove(I)Lcom/android/mms/model/SlideModel;

    .line 2292
    invoke-virtual {p0, v3}, Lcom/android/mms/data/WorkingMessage;->correctAttachmentState(Z)V

    .line 2293
    return v3
.end method

.method public requiresMms()Z
    .locals 1

    .prologue
    .line 1227
    iget v0, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public saveAsMms(Z)Landroid/net/Uri;
    .locals 8
    .parameter "notify"

    .prologue
    const/4 v6, 0x0

    const-string v7, "Mms/WorkingMessage"

    .line 945
    const-string v4, "Mms/WorkingMessage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "saveAsMms(),notify="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ,mConversation="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 947
    iget-boolean v4, p0, Lcom/android/mms/data/WorkingMessage;->mDiscarded:Z

    if-eqz v4, :cond_0

    .line 948
    const-string v4, "Mms/WorkingMessage"

    const-string v4, "saveAsMms() IllegalStateException : saveAsMms() called after discard()"

    invoke-static {v7, v4}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 949
    iput-boolean v6, p0, Lcom/android/mms/data/WorkingMessage;->mDiscarded:Z

    .line 956
    :cond_0
    const/16 v4, 0x10

    const/4 v5, 0x1

    invoke-direct {p0, v4, v5, p1}, Lcom/android/mms/data/WorkingMessage;->updateState(IZZ)V

    .line 959
    invoke-direct {p0, v6, v6}, Lcom/android/mms/data/WorkingMessage;->prepareForSave(ZZ)V

    .line 964
    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v4}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v1

    .line 965
    .local v1, recipient:Lcom/android/mms/data/ContactList;
    invoke-virtual {v1}, Lcom/android/mms/data/ContactList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 966
    new-instance v3, Lcom/android/mms/data/ContactList;

    invoke-direct {v3}, Lcom/android/mms/data/ContactList;-><init>()V

    .line 967
    .local v3, tempRecipients:Lcom/android/mms/data/ContactList;
    invoke-static {}, Lcom/android/mms/data/Contact;->getTemp()Lcom/android/mms/data/Contact;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/mms/data/ContactList;->add(Ljava/lang/Object;)Z

    .line 968
    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v4, v3}, Lcom/android/mms/data/Conversation;->setRecipients(Lcom/android/mms/data/ContactList;)V

    .line 975
    .end local v3           #tempRecipients:Lcom/android/mms/data/ContactList;
    :goto_0
    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v0

    .line 976
    .local v0, persister:Lcom/google/android/mms/pdu/PduPersister;
    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mSubject:Ljava/lang/CharSequence;

    invoke-static {v4, v5}, Lcom/android/mms/data/WorkingMessage;->makeSendReq(Lcom/android/mms/data/Conversation;Ljava/lang/CharSequence;)Lcom/google/android/mms/pdu/SendReq;

    move-result-object v2

    .line 980
    .local v2, sendReq:Lcom/google/android/mms/pdu/SendReq;
    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    if-nez v4, :cond_2

    .line 981
    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-static {v0, v2, v4}, Lcom/android/mms/data/WorkingMessage;->createDraftMmsMessage(Lcom/google/android/mms/pdu/PduPersister;Lcom/google/android/mms/pdu/SendReq;Lcom/android/mms/model/SlideshowModel;)Landroid/net/Uri;

    move-result-object v4

    iput-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    .line 986
    :goto_1
    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    return-object v4

    .line 970
    .end local v0           #persister:Lcom/google/android/mms/pdu/PduPersister;
    .end local v2           #sendReq:Lcom/google/android/mms/pdu/SendReq;
    :cond_1
    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v4}, Lcom/android/mms/data/Conversation;->ensureThreadId()J

    goto :goto_0

    .line 983
    .restart local v0       #persister:Lcom/google/android/mms/pdu/PduPersister;
    .restart local v2       #sendReq:Lcom/google/android/mms/pdu/SendReq;
    :cond_2
    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-static {v4, v0, v5, v2}, Lcom/android/mms/data/WorkingMessage;->updateDraftMmsMessage(Landroid/net/Uri;Lcom/google/android/mms/pdu/PduPersister;Lcom/android/mms/model/SlideshowModel;Lcom/google/android/mms/pdu/SendReq;)V

    goto :goto_1
.end method

.method public saveDraft(Z)Z
    .locals 5
    .parameter "isRemoveComposer"

    .prologue
    const/4 v3, 0x0

    const-string v4, "Mms/WorkingMessage"

    .line 994
    const-string v2, "Mms/WorkingMessage"

    const-string v2, "saveDraft()"

    invoke-static {v4, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 996
    const/4 v1, 0x0

    .line 999
    .local v1, isSaved:Z
    iget-boolean v2, p0, Lcom/android/mms/data/WorkingMessage;->mDiscarded:Z

    if-eqz v2, :cond_0

    .line 1000
    const-string v2, "Mms/WorkingMessage"

    const-string v2, "saveDraft(),mDiscarded=true"

    invoke-static {v4, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v3

    .line 1036
    :goto_0
    return v2

    .line 1005
    :cond_0
    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    if-nez v2, :cond_1

    .line 1006
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "saveDraft() called with no conversation"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1011
    :cond_1
    if-eqz p1, :cond_3

    .line 1012
    invoke-direct {p0, v3}, Lcom/android/mms/data/WorkingMessage;->prepareForSave(Z)V

    .line 1016
    :goto_1
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1017
    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-direct {p0, v2}, Lcom/android/mms/data/WorkingMessage;->asyncUpdateDraftMmsMessage(Lcom/android/mms/data/Conversation;)V

    .line 1018
    const/4 v1, 0x1

    .line 1035
    :cond_2
    :goto_2
    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/mms/data/Conversation;->setDraftState(Z)V

    move v2, v1

    .line 1036
    goto :goto_0

    .line 1014
    :cond_3
    invoke-direct {p0, v3, v3}, Lcom/android/mms/data/WorkingMessage;->prepareForSave(ZZ)V

    goto :goto_1

    .line 1020
    :cond_4
    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1028
    .local v0, content:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1029
    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-direct {p0, v2, v0}, Lcom/android/mms/data/WorkingMessage;->asyncUpdateDraftSmsMessage(Lcom/android/mms/data/Conversation;Ljava/lang/String;)V

    .line 1030
    const/4 v1, 0x1

    goto :goto_2
.end method

.method public send()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const-string v5, "send()"

    const-string v4, "Mms/WorkingMessage"

    .line 1333
    const-string v0, "Mms/WorkingMessage"

    const-string v0, "send()"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 1336
    invoke-direct {p0, v3}, Lcom/android/mms/data/WorkingMessage;->prepareForSave(Z)V

    .line 1340
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-direct {p0, v0}, Lcom/android/mms/data/WorkingMessage;->asyncSendMms(Lcom/android/mms/data/Conversation;)V

    .line 1349
    :goto_0
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/mms/data/RecipientIdCache;->updateNumbers(JLcom/android/mms/data/ContactList;)V

    .line 1352
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->hasDraft()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/data/Conversation;->setDraftState(Z)V

    .line 1355
    :cond_0
    iput-boolean v3, p0, Lcom/android/mms/data/WorkingMessage;->mDiscarded:Z

    .line 1357
    const-string v0, "Mms/WorkingMessage"

    const-string v0, "send()"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    .line 1358
    return-void

    .line 1341
    :cond_1
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-direct {p0, v0}, Lcom/android/mms/data/WorkingMessage;->asyncSendSms(Lcom/android/mms/data/Conversation;)V

    goto :goto_0
.end method

.method public setAttachment(Landroid/content/ContentResolver;IILandroid/net/Uri;ZZZ)I
    .locals 18
    .parameter "contentResolver"
    .parameter "location"
    .parameter "type"
    .parameter "dataUri"
    .parameter "append"
    .parameter "checkCRMode"
    .parameter "sendMultiple"

    .prologue
    .line 565
    if-eqz p4, :cond_0

    .line 567
    const-string v5, "Mms/WorkingMessage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setAttachment:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    :cond_0
    const/4 v14, 0x0

    .line 573
    .local v14, result:I
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/data/WorkingMessage;->ensureSlideshow()V

    .line 575
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    move-object v5, v0

    if-nez v5, :cond_1

    .line 576
    const/4 v5, -0x1

    .line 670
    :goto_0
    return v5

    .line 580
    :cond_1
    const/4 v5, 0x1

    move/from16 v0, p3

    move v1, v5

    if-ne v0, v1, :cond_2

    const/4 v5, 0x1

    move/from16 v0, p3

    move v1, v5

    if-ne v0, v1, :cond_6

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-static {v0, v1}, Lcom/android/mms/ui/MessageUtils;->isAnimatedImage(Landroid/content/ContentResolver;Landroid/net/Uri;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 581
    :cond_2
    const-wide/16 v15, -0x1

    .line 582
    .local v15, size:J
    const/4 v13, 0x0

    .line 583
    .local v13, metaDataCursor:Landroid/database/Cursor;
    if-eqz p4, :cond_3

    if-eqz p1, :cond_3

    .line 584
    sget-object v7, Lcom/android/mms/data/WorkingMessage;->ATTACHMENT_META_COLUMNS:[Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v5, p1

    move-object/from16 v6, p4

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 587
    :cond_3
    if-eqz v13, :cond_5

    .line 589
    :try_start_0
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 590
    const/4 v5, 0x0

    invoke-interface {v13, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    .line 592
    const-string v5, "Mms/WorkingMessage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cursor size:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-wide v1, v15

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 596
    :cond_4
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 599
    :cond_5
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxContentsSize()I

    move-result v5

    int-to-long v5, v5

    cmp-long v5, v5, v15

    if-gez v5, :cond_6

    .line 600
    const/4 v14, -0x2

    move v5, v14

    .line 601
    goto :goto_0

    .line 596
    :catchall_0
    move-exception v5

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    throw v5

    .line 605
    .end local v13           #metaDataCursor:Landroid/database/Cursor;
    .end local v15           #size:J
    :cond_6
    const/4 v12, 0x0

    .line 606
    .local v12, isSlideAdded:Z
    if-eqz p5, :cond_7

    .line 607
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v5

    move-object/from16 v0, p0

    move/from16 v1, p3

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/data/WorkingMessage;->isAddPossible(ILcom/android/mms/model/SlideModel;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 608
    add-int/lit8 p2, p2, 0x1

    .line 609
    new-instance v17, Lcom/android/mms/model/SlideModel;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    move-object v5, v0

    move-object/from16 v0, v17

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/android/mms/model/SlideModel;-><init>(Lcom/android/mms/model/SlideshowModel;)V

    .line 610
    .local v17, slide:Lcom/android/mms/model/SlideModel;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, p2

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/model/SlideshowModel;->add(ILcom/android/mms/model/SlideModel;)V

    .line 611
    const/4 v12, 0x1

    .line 615
    .end local v17           #slide:Lcom/android/mms/model/SlideModel;
    :cond_7
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/data/WorkingMessage;->checkMaxSlide(II)Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_9

    .line 616
    if-eqz v12, :cond_8

    .line 617
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/mms/model/SlideshowModel;->remove(I)Lcom/android/mms/model/SlideModel;

    .line 618
    const/4 v12, 0x0

    .line 620
    :cond_8
    const/4 v5, -0x1

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mms/data/WorkingMessage;->mNewSlide:I

    .line 621
    const/4 v5, -0x6

    goto/16 :goto_0

    .line 623
    :cond_9
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mms/data/WorkingMessage;->mNewSlide:I

    .line 628
    if-eqz p5, :cond_d

    .line 629
    :try_start_1
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p4

    move/from16 v4, p6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/mms/data/WorkingMessage;->appendMedia(IILandroid/net/Uri;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/mms/UnsupportContentTypeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/android/mms/ResolutionException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcom/android/mms/RotationRestrictionException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lcom/android/mms/ContentRestrictionException; {:try_start_1 .. :try_end_1} :catch_5

    .line 648
    :goto_1
    if-eqz v14, :cond_a

    .line 649
    if-eqz v12, :cond_a

    .line 650
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/mms/model/SlideshowModel;->remove(I)Lcom/android/mms/model/SlideModel;

    .line 651
    const/4 v12, 0x0

    .line 652
    const/4 v5, -0x1

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mms/data/WorkingMessage;->mNewSlide:I

    .line 659
    :cond_a
    :goto_2
    if-nez v14, :cond_c

    .line 660
    const/4 v5, 0x5

    move/from16 v0, p3

    move v1, v5

    if-eq v0, v1, :cond_b

    .line 661
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mms/data/WorkingMessage;->mAttachmentType:I

    .line 664
    :cond_b
    const/4 v5, 0x1

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/mms/data/WorkingMessage;->correctAttachmentState(Z)V

    .line 665
    if-nez p7, :cond_c

    .line 666
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/data/WorkingMessage;->mStatusListener:Lcom/android/mms/data/WorkingMessage$MessageStatusListener;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, p3

    invoke-interface {v0, v1}, Lcom/android/mms/data/WorkingMessage$MessageStatusListener;->onAttachmentChanged(I)V

    :cond_c
    move v5, v14

    .line 670
    goto/16 :goto_0

    .line 631
    :cond_d
    :try_start_2
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p4

    move/from16 v4, p6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/mms/data/WorkingMessage;->changeMedia(IILandroid/net/Uri;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/android/mms/UnsupportContentTypeException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/android/mms/ResolutionException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lcom/android/mms/RotationRestrictionException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Lcom/android/mms/ContentRestrictionException; {:try_start_2 .. :try_end_2} :catch_5

    goto :goto_1

    .line 633
    :catch_0
    move-exception v5

    move-object v11, v5

    .line 634
    .local v11, e:Lcom/google/android/mms/MmsException;
    const/4 v14, -0x1

    .line 648
    if-eqz v14, :cond_a

    .line 649
    if-eqz v12, :cond_a

    .line 650
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/mms/model/SlideshowModel;->remove(I)Lcom/android/mms/model/SlideModel;

    .line 651
    const/4 v12, 0x0

    .line 652
    const/4 v5, -0x1

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mms/data/WorkingMessage;->mNewSlide:I

    goto :goto_2

    .line 635
    .end local v11           #e:Lcom/google/android/mms/MmsException;
    :catch_1
    move-exception v5

    move-object v11, v5

    .line 636
    .local v11, e:Lcom/android/mms/UnsupportContentTypeException;
    const/4 v14, -0x3

    .line 648
    if-eqz v14, :cond_a

    .line 649
    if-eqz v12, :cond_a

    .line 650
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/mms/model/SlideshowModel;->remove(I)Lcom/android/mms/model/SlideModel;

    .line 651
    const/4 v12, 0x0

    .line 652
    const/4 v5, -0x1

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mms/data/WorkingMessage;->mNewSlide:I

    goto :goto_2

    .line 637
    .end local v11           #e:Lcom/android/mms/UnsupportContentTypeException;
    :catch_2
    move-exception v5

    move-object v11, v5

    .line 638
    .local v11, e:Lcom/android/mms/ExceedMessageSizeException;
    const/4 v14, -0x2

    .line 648
    if-eqz v14, :cond_a

    .line 649
    if-eqz v12, :cond_a

    .line 650
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/mms/model/SlideshowModel;->remove(I)Lcom/android/mms/model/SlideModel;

    .line 651
    const/4 v12, 0x0

    .line 652
    const/4 v5, -0x1

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mms/data/WorkingMessage;->mNewSlide:I

    goto :goto_2

    .line 640
    .end local v11           #e:Lcom/android/mms/ExceedMessageSizeException;
    :catch_3
    move-exception v5

    move-object v11, v5

    .line 641
    .local v11, e:Lcom/android/mms/ResolutionException;
    const/4 v14, -0x4

    .line 648
    if-eqz v14, :cond_a

    .line 649
    if-eqz v12, :cond_a

    .line 650
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/mms/model/SlideshowModel;->remove(I)Lcom/android/mms/model/SlideModel;

    .line 651
    const/4 v12, 0x0

    .line 652
    const/4 v5, -0x1

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mms/data/WorkingMessage;->mNewSlide:I

    goto/16 :goto_2

    .line 643
    .end local v11           #e:Lcom/android/mms/ResolutionException;
    :catch_4
    move-exception v5

    move-object v11, v5

    .line 644
    .local v11, e:Lcom/android/mms/RotationRestrictionException;
    const/4 v14, -0x8

    .line 648
    if-eqz v14, :cond_a

    .line 649
    if-eqz v12, :cond_a

    .line 650
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/mms/model/SlideshowModel;->remove(I)Lcom/android/mms/model/SlideModel;

    .line 651
    const/4 v12, 0x0

    .line 652
    const/4 v5, -0x1

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mms/data/WorkingMessage;->mNewSlide:I

    goto/16 :goto_2

    .line 645
    .end local v11           #e:Lcom/android/mms/RotationRestrictionException;
    :catch_5
    move-exception v5

    move-object v11, v5

    .line 646
    .local v11, e:Lcom/android/mms/ContentRestrictionException;
    const/4 v14, -0x5

    .line 648
    if-eqz v14, :cond_a

    .line 649
    if-eqz v12, :cond_a

    .line 650
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/mms/model/SlideshowModel;->remove(I)Lcom/android/mms/model/SlideModel;

    .line 651
    const/4 v12, 0x0

    .line 652
    const/4 v5, -0x1

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mms/data/WorkingMessage;->mNewSlide:I

    goto/16 :goto_2

    .line 648
    .end local v11           #e:Lcom/android/mms/ContentRestrictionException;
    :catchall_1
    move-exception v5

    if-eqz v14, :cond_e

    .line 649
    if-eqz v12, :cond_e

    .line 650
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    move-object v6, v0

    move-object v0, v6

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/mms/model/SlideshowModel;->remove(I)Lcom/android/mms/model/SlideModel;

    .line 651
    const/4 v12, 0x0

    .line 652
    const/4 v6, -0x1

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mms/data/WorkingMessage;->mNewSlide:I

    :cond_e
    throw v5
.end method

.method public setConversation(Lcom/android/mms/data/Conversation;Z)V
    .locals 3
    .parameter "conv"
    .parameter "notify"

    .prologue
    .line 1199
    const-string v0, "Mms/WorkingMessage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setConversation(),before="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",after="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 1201
    iput-object p1, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    .line 1205
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1207
    invoke-virtual {p1}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/data/ContactList;->containsEmail()Z

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/android/mms/data/WorkingMessage;->setHasEmail(ZZ)V

    .line 1209
    :cond_0
    return-void
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0
    .parameter "handler"

    .prologue
    .line 2393
    iput-object p1, p0, Lcom/android/mms/data/WorkingMessage;->mHandler:Landroid/os/Handler;

    .line 2394
    return-void
.end method

.method public setHasEmail(ZZ)V
    .locals 2
    .parameter "hasEmail"
    .parameter "notify"

    .prologue
    const/4 v1, 0x1

    .line 1216
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEmailGateway()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1217
    const/4 v0, 0x0

    invoke-direct {p0, v1, v0, p2}, Lcom/android/mms/data/WorkingMessage;->updateState(IZZ)V

    .line 1221
    :goto_0
    return-void

    .line 1219
    :cond_0
    invoke-direct {p0, v1, p1, p2}, Lcom/android/mms/data/WorkingMessage;->updateState(IZZ)V

    goto :goto_0
.end method

.method public setLengthRequiresMms(Z)V
    .locals 2
    .parameter "mmsRequired"

    .prologue
    const/4 v1, 0x1

    .line 1246
    const/16 v0, 0x8

    invoke-direct {p0, v0, p1, v1}, Lcom/android/mms/data/WorkingMessage;->updateState(IZZ)V

    .line 1248
    if-eq p1, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1249
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/data/WorkingMessage;->ensureSlideshow()V

    .line 1255
    :cond_1
    :goto_0
    return-void

    .line 1251
    :cond_2
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v0, :cond_1

    .line 1252
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/mms/data/WorkingMessage;->correctAttachmentState(Z)V

    goto :goto_0
.end method

.method public setRecipients(Ljava/lang/String;)V
    .locals 0
    .parameter "recipients"

    .prologue
    .line 458
    iput-object p1, p0, Lcom/android/mms/data/WorkingMessage;->mRecipients:Ljava/lang/String;

    .line 459
    return-void
.end method

.method public setSubject(Ljava/lang/CharSequence;Z)V
    .locals 9
    .parameter "s"
    .parameter "notify"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 784
    const-string v3, "Mms/WorkingMessage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setSubject(),s="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",notify="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 786
    iput-object p1, p0, Lcom/android/mms/data/WorkingMessage;->mSubject:Ljava/lang/CharSequence;

    .line 787
    const/4 v3, 0x2

    if-eqz p1, :cond_2

    move v4, v8

    :goto_0
    invoke-direct {p0, v3, v4, p2}, Lcom/android/mms/data/WorkingMessage;->updateState(IZZ)V

    .line 788
    if-eqz p1, :cond_1

    .line 789
    invoke-direct {p0}, Lcom/android/mms/data/WorkingMessage;->ensureSlideshow()V

    .line 790
    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v3}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v3

    if-ne v3, v8, :cond_1

    .line 791
    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v3, v7}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v1

    .line 792
    .local v1, slide:Lcom/android/mms/model/SlideModel;
    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->hasText()Z

    move-result v3

    if-nez v3, :cond_1

    .line 794
    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-static {v3}, Lcom/android/mms/ui/MessageUtils;->getCidTextIndex(Lcom/android/mms/model/SlideshowModel;)I

    move-result v0

    .line 795
    .local v0, index:I
    new-instance v2, Lcom/android/mms/model/TextModel;

    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    const-string v4, "text/plain"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cid:text_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".txt"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v6}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/mms/model/LayoutModel;->getTextRegion()Lcom/android/mms/model/RegionModel;

    move-result-object v6

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/android/mms/model/TextModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/model/RegionModel;)V

    .line 798
    .local v2, text:Lcom/android/mms/model/TextModel;
    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    aget-object v3, v3, v7

    if-eqz v3, :cond_0

    .line 799
    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    aget-object v3, v3, v7

    invoke-virtual {v2, v3, v8}, Lcom/android/mms/model/TextModel;->setText(Ljava/lang/CharSequence;Z)V

    .line 801
    :cond_0
    invoke-virtual {v1, v2}, Lcom/android/mms/model/SlideModel;->add(Lcom/android/mms/model/MediaModel;)Z

    .line 805
    .end local v0           #index:I
    .end local v1           #slide:Lcom/android/mms/model/SlideModel;
    .end local v2           #text:Lcom/android/mms/model/TextModel;
    :cond_1
    return-void

    :cond_2
    move v4, v7

    .line 787
    goto :goto_0
.end method

.method public setWorkingRecipients(Lcom/android/mms/data/ContactList;)V
    .locals 2
    .parameter "numbers"

    .prologue
    .line 1125
    new-instance v0, Lcom/android/mms/data/ContactList;

    invoke-direct {v0}, Lcom/android/mms/data/ContactList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mWorkingRecipients:Lcom/android/mms/data/ContactList;

    .line 1126
    iput-object p1, p0, Lcom/android/mms/data/WorkingMessage;->mWorkingRecipients:Lcom/android/mms/data/ContactList;

    .line 1127
    const-string v0, "Mms/WorkingMessage"

    const-string v1, "setWorkingRecipients"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1128
    return-void
.end method

.method public syncWorkingRecipients()V
    .locals 2

    .prologue
    .line 920
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mWorkingRecipients:Lcom/android/mms/data/ContactList;

    if-eqz v0, :cond_0

    .line 921
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mWorkingRecipients:Lcom/android/mms/data/ContactList;

    invoke-virtual {v0, v1}, Lcom/android/mms/data/Conversation;->setRecipients(Lcom/android/mms/data/ContactList;)V

    .line 922
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mWorkingRecipients:Lcom/android/mms/data/ContactList;

    .line 924
    :cond_0
    return-void
.end method

.method public unDiscard()V
    .locals 2

    .prologue
    .line 1064
    const-string v0, "Mms/WorkingMessage"

    const-string v1, "unDiscard"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1066
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/data/WorkingMessage;->mDiscarded:Z

    .line 1067
    return-void
.end method

.method public updateText(ILjava/lang/CharSequence;)I
    .locals 12
    .parameter "slideIndex"
    .parameter "s"

    .prologue
    const/4 v11, 0x1

    .line 482
    const-string v7, "Mms/WorkingMessage"

    const-string v8, "changeSlideText()"

    invoke-static {v7, v8}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    const/4 v2, 0x0

    .line 484
    .local v2, result:I
    if-eqz p2, :cond_2

    .line 485
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    .line 490
    :goto_0
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v7, :cond_1

    .line 491
    :cond_0
    iget-object v7, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v7, p1}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v3

    .line 492
    .local v3, slide:Lcom/android/mms/model/SlideModel;
    invoke-virtual {v3}, Lcom/android/mms/model/SlideModel;->hasText()Z

    move-result v7

    if-nez v7, :cond_3

    .line 493
    iget-object v7, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-static {v7}, Lcom/android/mms/ui/MessageUtils;->getCidTextIndex(Lcom/android/mms/model/SlideshowModel;)I

    move-result v1

    .line 494
    .local v1, index:I
    new-instance v4, Lcom/android/mms/model/TextModel;

    iget-object v7, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    const-string v8, "text/plain"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "cid:text_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".txt"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v10}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/mms/model/LayoutModel;->getTextRegion()Lcom/android/mms/model/RegionModel;

    move-result-object v10

    invoke-direct {v4, v7, v8, v9, v10}, Lcom/android/mms/model/TextModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/model/RegionModel;)V

    .line 496
    .local v4, text:Lcom/android/mms/model/TextModel;
    invoke-virtual {v4}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v6

    .line 497
    .local v6, textString:Ljava/lang/String;
    invoke-virtual {v4, p2, v11}, Lcom/android/mms/model/TextModel;->setText(Ljava/lang/CharSequence;Z)V

    .line 499
    :try_start_0
    invoke-virtual {v3, v4}, Lcom/android/mms/model/SlideModel;->add(Lcom/android/mms/model/MediaModel;)Z
    :try_end_0
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 518
    .end local v1           #index:I
    .end local v3           #slide:Lcom/android/mms/model/SlideModel;
    .end local v4           #text:Lcom/android/mms/model/TextModel;
    .end local v6           #textString:Ljava/lang/String;
    :cond_1
    :goto_1
    invoke-direct {p0, p1, p2}, Lcom/android/mms/data/WorkingMessage;->setText(ILjava/lang/CharSequence;)V

    .line 519
    return v2

    .line 487
    :cond_2
    const-string p2, ""

    goto :goto_0

    .line 500
    .restart local v1       #index:I
    .restart local v3       #slide:Lcom/android/mms/model/SlideModel;
    .restart local v4       #text:Lcom/android/mms/model/TextModel;
    .restart local v6       #textString:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 501
    .local v0, e:Lcom/android/mms/ExceedMessageSizeException;
    const/4 v2, -0x2

    .line 502
    invoke-virtual {v4, v6, v11}, Lcom/android/mms/model/TextModel;->setText(Ljava/lang/CharSequence;Z)V

    .line 503
    invoke-virtual {v3, v4}, Lcom/android/mms/model/SlideModel;->add(Lcom/android/mms/model/MediaModel;)Z

    .line 504
    move-object p2, v6

    goto :goto_1

    .line 508
    .end local v0           #e:Lcom/android/mms/ExceedMessageSizeException;
    .end local v1           #index:I
    .end local v4           #text:Lcom/android/mms/model/TextModel;
    .end local v6           #textString:Ljava/lang/String;
    :cond_3
    invoke-virtual {v3}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v5

    .line 509
    .local v5, textModel:Lcom/android/mms/model/TextModel;
    invoke-virtual {v5}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v6

    .line 511
    .restart local v6       #textString:Ljava/lang/String;
    :try_start_1
    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7, v5}, Lcom/android/mms/model/SlideModel;->replaceText(Ljava/lang/String;Lcom/android/mms/model/TextModel;)V
    :try_end_1
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 512
    :catch_1
    move-exception v7

    move-object v0, v7

    .line 513
    .restart local v0       #e:Lcom/android/mms/ExceedMessageSizeException;
    const/4 v2, -0x2

    .line 514
    move-object p2, v6

    goto :goto_1
.end method

.method public writeStateToBundle(Landroid/os/Bundle;)V
    .locals 3
    .parameter "bundle"

    .prologue
    .line 1083
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->hasSubject()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1084
    const-string v0, "subject"

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mSubject:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1087
    :cond_0
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    if-eqz v0, :cond_2

    .line 1088
    const-string v0, "msg_uri"

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1092
    :cond_1
    :goto_0
    return-void

    .line 1089
    :cond_2
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->hasText()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1090
    const-string v0, "sms_body"

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
