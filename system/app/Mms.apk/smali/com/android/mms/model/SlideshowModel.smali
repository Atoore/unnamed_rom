.class public Lcom/android/mms/model/SlideshowModel;
.super Lcom/android/mms/model/Model;
.source "SlideshowModel.java"

# interfaces
.implements Lcom/android/mms/model/IModelChangedObserver;
.implements Ljava/util/List;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/mms/model/Model;",
        "Ljava/util/List",
        "<",
        "Lcom/android/mms/model/SlideModel;",
        ">;",
        "Lcom/android/mms/model/IModelChangedObserver;"
    }
.end annotation


# static fields
.field private static mCheckMessageSize:Z

.field private static mIsDrmContentsPresent:Z

.field private static mIsRawAttachmentsPresent:Z

.field private static mRawAttachmentAddSlide:Z

.field private static mRawAttachmentAddSlideforCompose:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentMessageSize:I

.field private mDocumentCache:Lorg/w3c/dom/smil/SMILDocument;

.field private final mLayout:Lcom/android/mms/model/LayoutModel;

.field private mPduBodyCache:Lcom/google/android/mms/pdu/PduBody;

.field public final mRawAttachments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/model/AttachmentModel;",
            ">;"
        }
    .end annotation
.end field

.field public final mSlides:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/model/SlideModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 85
    sput-boolean v0, Lcom/android/mms/model/SlideshowModel;->mIsRawAttachmentsPresent:Z

    .line 87
    sput-boolean v0, Lcom/android/mms/model/SlideshowModel;->mRawAttachmentAddSlide:Z

    .line 89
    sput-boolean v0, Lcom/android/mms/model/SlideshowModel;->mRawAttachmentAddSlideforCompose:Z

    .line 91
    sput-boolean v0, Lcom/android/mms/model/SlideshowModel;->mIsDrmContentsPresent:Z

    .line 93
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/mms/model/SlideshowModel;->mCheckMessageSize:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/android/mms/model/Model;-><init>()V

    .line 108
    new-instance v0, Lcom/android/mms/model/LayoutModel;

    invoke-direct {v0}, Lcom/android/mms/model/LayoutModel;-><init>()V

    iput-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mLayout:Lcom/android/mms/model/LayoutModel;

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    .line 110
    iput-object p1, p0, Lcom/android/mms/model/SlideshowModel;->mContext:Landroid/content/Context;

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mRawAttachments:Ljava/util/ArrayList;

    .line 112
    return-void
.end method

.method private constructor <init>(Lcom/android/mms/model/LayoutModel;Ljava/util/ArrayList;Ljava/util/ArrayList;Lorg/w3c/dom/smil/SMILDocument;Lcom/google/android/mms/pdu/PduBody;Landroid/content/Context;)V
    .locals 4
    .parameter "layouts"
    .parameter
    .parameter
    .parameter "documentCache"
    .parameter "pbCache"
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/mms/model/LayoutModel;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/model/SlideModel;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/model/AttachmentModel;",
            ">;",
            "Lorg/w3c/dom/smil/SMILDocument;",
            "Lcom/google/android/mms/pdu/PduBody;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 116
    .local p2, slides:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/SlideModel;>;"
    .local p3, attachments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/AttachmentModel;>;"
    invoke-direct {p0}, Lcom/android/mms/model/Model;-><init>()V

    .line 117
    iput-object p1, p0, Lcom/android/mms/model/SlideshowModel;->mLayout:Lcom/android/mms/model/LayoutModel;

    .line 118
    iput-object p2, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    .line 119
    iput-object p6, p0, Lcom/android/mms/model/SlideshowModel;->mContext:Landroid/content/Context;

    .line 120
    iput-object p3, p0, Lcom/android/mms/model/SlideshowModel;->mRawAttachments:Ljava/util/ArrayList;

    .line 122
    iput-object p4, p0, Lcom/android/mms/model/SlideshowModel;->mDocumentCache:Lorg/w3c/dom/smil/SMILDocument;

    .line 123
    iput-object p5, p0, Lcom/android/mms/model/SlideshowModel;->mPduBodyCache:Lcom/google/android/mms/pdu/PduBody;

    .line 124
    iget-object v3, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/model/SlideModel;

    .line 125
    .local v2, slide:Lcom/android/mms/model/SlideModel;
    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->getSlideSize()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/mms/model/SlideshowModel;->increaseMessageSize(I)V

    .line 126
    invoke-virtual {v2, p0}, Lcom/android/mms/model/SlideModel;->setParent(Lcom/android/mms/model/SlideshowModel;)V

    goto :goto_0

    .line 129
    .end local v2           #slide:Lcom/android/mms/model/SlideModel;
    :cond_0
    iget-object v3, p0, Lcom/android/mms/model/SlideshowModel;->mRawAttachments:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/model/AttachmentModel;

    .line 130
    .local v0, attachment:Lcom/android/mms/model/AttachmentModel;
    invoke-virtual {v0}, Lcom/android/mms/model/AttachmentModel;->getMediaSize()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/mms/model/SlideshowModel;->increaseMessageSize(I)V

    goto :goto_1

    .line 132
    .end local v0           #attachment:Lcom/android/mms/model/AttachmentModel;
    :cond_1
    return-void
.end method

.method private static checkCRMode(ZZLcom/android/mms/model/MediaModel;)Z
    .locals 3
    .parameter "checkCRMode"
    .parameter "doNotAddMedia"
    .parameter "media"

    .prologue
    .line 288
    if-eqz p0, :cond_0

    .line 290
    :try_start_0
    invoke-virtual {p2}, Lcom/android/mms/model/MediaModel;->isImage()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 291
    move-object v0, p2

    check-cast v0, Lcom/android/mms/model/ImageModel;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/android/mms/model/ImageModel;->checkCreationMode()V

    .line 292
    check-cast p2, Lcom/android/mms/model/ImageModel;

    .end local p2
    invoke-virtual {p2}, Lcom/android/mms/model/ImageModel;->checkContentRestriction()V

    .line 310
    :cond_0
    :goto_0
    return p1

    .line 293
    .restart local p2
    :cond_1
    invoke-virtual {p2}, Lcom/android/mms/model/MediaModel;->isAudio()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 294
    move-object v0, p2

    check-cast v0, Lcom/android/mms/model/AudioModel;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/android/mms/model/AudioModel;->checkCreationMode()V

    .line 295
    check-cast p2, Lcom/android/mms/model/AudioModel;

    .end local p2
    invoke-virtual {p2}, Lcom/android/mms/model/AudioModel;->checkContentRestriction()V

    goto :goto_0

    .line 300
    :catch_0
    move-exception v2

    goto :goto_0

    .line 296
    .restart local p2
    :cond_2
    invoke-virtual {p2}, Lcom/android/mms/model/MediaModel;->isVideo()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 297
    move-object v0, p2

    check-cast v0, Lcom/android/mms/model/VideoModel;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/android/mms/model/VideoModel;->checkCreationMode()V

    .line 298
    check-cast p2, Lcom/android/mms/model/VideoModel;

    .end local p2
    invoke-virtual {p2}, Lcom/android/mms/model/VideoModel;->checkContentRestriction()V
    :try_end_0
    .catch Lcom/android/mms/UnsupportContentTypeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/android/mms/ResolutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/android/mms/ContentRestrictionException; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_0

    .line 302
    :catch_1
    move-exception v2

    goto :goto_0

    .line 304
    :catch_2
    move-exception v2

    move-object v1, v2

    .line 305
    .local v1, e:Lcom/android/mms/ResolutionException;
    const/4 p1, 0x1

    .line 308
    goto :goto_0

    .line 306
    .end local v1           #e:Lcom/android/mms/ResolutionException;
    :catch_3
    move-exception v2

    move-object v1, v2

    .line 307
    .local v1, e:Lcom/android/mms/ContentRestrictionException;
    const/4 p1, 0x1

    goto :goto_0
.end method

.method private static checkContentId(Lcom/google/android/mms/pdu/PduPart;)Ljava/lang/String;
    .locals 3
    .parameter "p"

    .prologue
    const/4 v2, 0x1

    .line 694
    const/4 v0, 0x0

    .line 695
    .local v0, contentId:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduPart;->getContentId()[B

    move-result-object v1

    if-eqz v1, :cond_0

    .line 696
    new-instance v0, Ljava/lang/String;

    .end local v0           #contentId:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduPart;->getContentId()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 698
    .restart local v0       #contentId:Ljava/lang/String;
    :cond_0
    if-eqz v0, :cond_1

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 699
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 701
    :cond_1
    return-object v0
.end method

.method private static checkContentLocation(Lcom/google/android/mms/pdu/PduPart;)Ljava/lang/String;
    .locals 2
    .parameter "p"

    .prologue
    .line 706
    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduPart;->getContentLocation()[B

    move-result-object v1

    if-eqz v1, :cond_0

    .line 707
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduPart;->getContentLocation()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 711
    .local v0, contentLoc:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 709
    .end local v0           #contentLoc:Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduPart;->generateLocation()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #contentLoc:Ljava/lang/String;
    goto :goto_0
.end method

.method private static checkContentType(Lcom/google/android/mms/pdu/PduPart;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "p"
    .parameter "contentType"
    .parameter "mediaName"

    .prologue
    .line 715
    const-string v0, ".vcf"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 716
    const-string v0, "text/x-vCard"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduPart;->setContentType([B)V

    .line 717
    new-instance p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>([B)V

    .line 728
    .restart local p1
    :cond_0
    :goto_0
    return-object p1

    .line 718
    :cond_1
    const-string v0, ".vcs"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 719
    const-string v0, "text/x-vCalendar"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduPart;->setContentType([B)V

    .line 720
    new-instance p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>([B)V

    .restart local p1
    goto :goto_0

    .line 721
    :cond_2
    const-string v0, ".vnt"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 722
    const-string v0, "text/x-vNote"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduPart;->setContentType([B)V

    .line 723
    new-instance p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>([B)V

    .restart local p1
    goto :goto_0

    .line 724
    :cond_3
    const-string v0, ".vts"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 725
    const-string v0, "text/x-vtodo"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduPart;->setContentType([B)V

    .line 726
    new-instance p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>([B)V

    .restart local p1
    goto :goto_0
.end method

.method private static checkSlideMedia(Ljava/lang/String;)Z
    .locals 2
    .parameter "slideMediaName"

    .prologue
    .line 733
    const-string v1, ".vcf"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ".vcs"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ".vnt"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ".vts"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 737
    :cond_0
    const/4 v0, 0x0

    .line 741
    .local v0, isSlideMedia:Z
    :goto_0
    return v0

    .line 739
    .end local v0           #isSlideMedia:Z
    :cond_1
    const/4 v0, 0x1

    .restart local v0       #isSlideMedia:Z
    goto :goto_0
.end method

.method public static createFromMessageUri(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/mms/model/SlideshowModel;
    .locals 1
    .parameter "context"
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 139
    invoke-static {p0, p1}, Lcom/android/mms/model/SlideshowModel;->getPduBody(Landroid/content/Context;Landroid/net/Uri;)Lcom/google/android/mms/pdu/PduBody;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/mms/model/SlideshowModel;->createFromPduBody(Landroid/content/Context;Lcom/google/android/mms/pdu/PduBody;)Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    return-object v0
.end method

.method public static createFromPduBody(Landroid/content/Context;Landroid/net/Uri;Z)Lcom/android/mms/model/SlideshowModel;
    .locals 27
    .parameter "context"
    .parameter "uri"
    .parameter "checkCRMode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 145
    invoke-static/range {p0 .. p1}, Lcom/android/mms/model/SlideshowModel;->getPduBody(Landroid/content/Context;Landroid/net/Uri;)Lcom/google/android/mms/pdu/PduBody;

    move-result-object v6

    .line 146
    .local v6, pb:Lcom/google/android/mms/pdu/PduBody;
    const/16 p1, 0x0

    sput-boolean p1, Lcom/android/mms/model/SlideshowModel;->mIsRawAttachmentsPresent:Z

    .line 147
    .end local p1
    const/16 p1, 0x0

    sput-boolean p1, Lcom/android/mms/model/SlideshowModel;->mIsDrmContentsPresent:Z

    .line 148
    move-object v0, v6

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lcom/android/mms/model/SmilHelper;->getDocument(Lcom/google/android/mms/pdu/PduBody;Landroid/content/Context;)Lorg/w3c/dom/smil/SMILDocument;

    move-result-object v7

    .line 151
    .local v7, document:Lorg/w3c/dom/smil/SMILDocument;
    invoke-interface {v7}, Lorg/w3c/dom/smil/SMILDocument;->getLayout()Lorg/w3c/dom/smil/SMILLayoutElement;

    move-result-object v8

    .line 152
    .local v8, sle:Lorg/w3c/dom/smil/SMILLayoutElement;
    invoke-interface {v8}, Lorg/w3c/dom/smil/SMILLayoutElement;->getRootLayout()Lorg/w3c/dom/smil/SMILRootLayoutElement;

    move-result-object p1

    .line 153
    .local p1, srle:Lorg/w3c/dom/smil/SMILRootLayoutElement;
    invoke-static/range {p1 .. p1}, Lcom/android/mms/model/SlideshowModel;->createRegionModel(Lorg/w3c/dom/smil/SMILRootLayoutElement;)Lcom/android/mms/model/RegionModel;

    move-result-object v5

    .line 156
    .local v5, rootLayout:Lcom/android/mms/model/RegionModel;
    new-instance p1, Ljava/util/ArrayList;

    .end local p1           #srle:Lorg/w3c/dom/smil/SMILRootLayoutElement;
    invoke-direct/range {p1 .. p1}, Ljava/util/ArrayList;-><init>()V

    .line 157
    .local p1, regions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/RegionModel;>;"
    move-object v0, v8

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/mms/model/SlideshowModel;->makeRegionModelList(Lorg/w3c/dom/smil/SMILLayoutElement;Ljava/util/ArrayList;)I

    move-result v8

    .line 159
    .local v8, sumOfRegionHeight:I
    invoke-virtual {v5}, Lcom/android/mms/model/RegionModel;->getHeight()I

    move-result v9

    if-lez v9, :cond_0

    if-lez v8, :cond_0

    invoke-virtual {v5}, Lcom/android/mms/model/RegionModel;->getHeight()I

    move-result v9

    if-le v8, v9, :cond_0

    .line 160
    invoke-virtual {v5, v8}, Lcom/android/mms/model/RegionModel;->setHeight(I)V

    .line 166
    :cond_0
    new-instance v8, Lcom/android/mms/model/LayoutModel;

    .end local v8           #sumOfRegionHeight:I
    move-object v0, v8

    move-object v1, v5

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/mms/model/LayoutModel;-><init>(Lcom/android/mms/model/RegionModel;Ljava/util/ArrayList;)V

    .line 169
    .local v8, layouts:Lcom/android/mms/model/LayoutModel;
    invoke-interface {v7}, Lorg/w3c/dom/smil/SMILDocument;->getBody()Lorg/w3c/dom/smil/SMILElement;

    move-result-object p1

    .line 170
    .local p1, docBody:Lorg/w3c/dom/smil/SMILElement;
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/smil/SMILElement;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v21

    .line 171
    .local v21, slideNodes:Lorg/w3c/dom/NodeList;
    invoke-interface/range {v21 .. v21}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v22

    .line 172
    .local v22, slidesNum:I
    new-instance v9, Ljava/util/ArrayList;

    move-object v0, v9

    move/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 174
    .local v9, slides:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/SlideModel;>;"
    const/4 v10, 0x0

    .line 176
    .local v10, mediaCount:I
    move-object/from16 v0, p0

    move-object v1, v6

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Lcom/android/mms/model/SlideshowModel;->getAttachmentList(Landroid/content/Context;Lcom/google/android/mms/pdu/PduBody;Lorg/w3c/dom/NodeList;)Ljava/util/ArrayList;

    move-result-object v11

    .line 178
    .local v11, attachments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/AttachmentModel;>;"
    const/16 p1, 0x0

    .local p1, i:I
    move/from16 v13, p1

    .end local v5           #rootLayout:Lcom/android/mms/model/RegionModel;
    .end local p1           #i:I
    .local v13, i:I
    :goto_0
    move v0, v13

    move/from16 v1, v22

    if-ge v0, v1, :cond_9

    .line 181
    const/16 p1, 0x0

    .line 182
    .local p1, doNotAddSlide:Z
    move-object/from16 v0, v21

    move v1, v13

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v19

    check-cast v19, Lorg/w3c/dom/smil/SMILParElement;

    .line 183
    .local v19, par:Lorg/w3c/dom/smil/SMILParElement;
    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/smil/SMILParElement;->getDur()F

    move-result v5

    const/high16 v10, 0x447a

    mul-float/2addr v5, v10

    move v0, v5

    float-to-int v0, v0

    move/from16 v20, v0

    .line 185
    .local v20, parDuration:I
    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/smil/SMILParElement;->getChildNodes()Lorg/w3c/dom/NodeList;

    .end local v10           #mediaCount:I
    move-result-object v16

    .line 186
    .local v16, mediaNodes:Lorg/w3c/dom/NodeList;
    invoke-interface/range {v16 .. v16}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v17

    .line 188
    .local v17, mediaNum:I
    const/4 v12, 0x0

    .line 190
    .local v12, mediaDuration:I
    new-instance v18, Ljava/util/ArrayList;

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 191
    .local v18, mediaSet:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/MediaModel;>;"
    move/from16 v10, v17

    .line 192
    .restart local v10       #mediaCount:I
    const/4 v5, 0x0

    .local v5, j:I
    move v14, v5

    .end local v5           #j:I
    .local v14, j:I
    move v15, v12

    .end local v12           #mediaDuration:I
    .local v15, mediaDuration:I
    move/from16 v5, p1

    .end local p1           #doNotAddSlide:Z
    .local v5, doNotAddSlide:Z
    :goto_1
    move v0, v14

    move/from16 v1, v17

    if-ge v0, v1, :cond_6

    .line 193
    move-object/from16 v0, v16

    move v1, v14

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v23

    check-cast v23, Lorg/w3c/dom/smil/SMILMediaElement;

    .line 194
    .local v23, sme:Lorg/w3c/dom/smil/SMILMediaElement;
    const/16 p1, 0x0

    .line 196
    .local p1, doNotAddMedia:Z
    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object v2, v8

    move-object v3, v6

    move/from16 v4, v20

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/mms/model/MediaModelFactory;->getMediaModel(Landroid/content/Context;Lorg/w3c/dom/smil/SMILMediaElement;Lcom/android/mms/model/LayoutModel;Lcom/google/android/mms/pdu/PduBody;I)Lcom/android/mms/model/MediaModel;

    move-result-object v12

    .line 200
    .local v12, media:Lcom/android/mms/model/MediaModel;
    invoke-virtual {v12}, Lcom/android/mms/model/MediaModel;->getDuration()I

    move-result v15

    .line 201
    const-string v24, "Mms/slideshow"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "mediaDuration : "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    invoke-virtual {v12}, Lcom/android/mms/model/MediaModel;->getContentType()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/google/android/mms/ContentType;->isDrmType(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_1

    .line 207
    const/16 v24, 0x1

    sput-boolean v24, Lcom/android/mms/model/SlideshowModel;->mIsDrmContentsPresent:Z

    .line 209
    :cond_1
    invoke-virtual {v12}, Lcom/android/mms/model/MediaModel;->getContentType()Ljava/lang/String;

    move-result-object v24

    const-string v25, "text/x-vCard"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v24

    if-nez v24, :cond_2

    invoke-virtual {v12}, Lcom/android/mms/model/MediaModel;->getContentType()Ljava/lang/String;

    move-result-object v24

    const-string v25, "text/x-vCalendar"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v24

    if-nez v24, :cond_2

    invoke-virtual {v12}, Lcom/android/mms/model/MediaModel;->getContentType()Ljava/lang/String;

    move-result-object v24

    const-string v25, "text/x-vNote"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v24

    if-nez v24, :cond_2

    invoke-virtual {v12}, Lcom/android/mms/model/MediaModel;->getContentType()Ljava/lang/String;

    move-result-object v24

    const-string v25, "text/x-vtodo"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_3

    .line 213
    :cond_2
    const/4 v12, 0x1

    sput-boolean v12, Lcom/android/mms/model/SlideshowModel;->mIsRawAttachmentsPresent:Z

    .end local v12           #media:Lcom/android/mms/model/MediaModel;
    move v12, v15

    .line 192
    .end local v15           #mediaDuration:I
    .end local v23           #sme:Lorg/w3c/dom/smil/SMILMediaElement;
    .local v12, mediaDuration:I
    :goto_2
    add-int/lit8 p1, v14, 0x1

    .end local v14           #j:I
    .local p1, j:I
    move/from16 v14, p1

    .end local p1           #j:I
    .restart local v14       #j:I
    move v15, v12

    .end local v12           #mediaDuration:I
    .restart local v15       #mediaDuration:I
    goto/16 :goto_1

    .line 217
    .local v12, media:Lcom/android/mms/model/MediaModel;
    .restart local v23       #sme:Lorg/w3c/dom/smil/SMILMediaElement;
    .local p1, doNotAddMedia:Z
    :cond_3
    const/16 v24, 0x1

    move v0, v10

    move/from16 v1, v24

    if-ne v0, v1, :cond_4

    sget-boolean v24, Lcom/android/mms/model/SlideshowModel;->mIsRawAttachmentsPresent:Z

    if-eqz v24, :cond_4

    .line 218
    invoke-virtual {v12}, Lcom/android/mms/model/MediaModel;->isText()Z

    move-result v24

    if-eqz v24, :cond_4

    const/16 v24, 0x1

    sub-int v24, v22, v24

    move v0, v13

    move/from16 v1, v24

    if-ne v0, v1, :cond_4

    invoke-static {}, Lcom/android/mms/model/SlideshowModel;->getAddAttachmentSlideForCompose()Z

    move-result v24

    if-nez v24, :cond_4

    .line 220
    const/16 p1, 0x1

    .line 221
    const/4 v5, 0x1

    .line 232
    :cond_4
    move/from16 v0, p2

    move/from16 v1, p1

    move-object v2, v12

    invoke-static {v0, v1, v2}, Lcom/android/mms/model/SlideshowModel;->checkCRMode(ZZLcom/android/mms/model/MediaModel;)Z

    move-result p1

    .line 233
    if-nez p1, :cond_5

    .line 234
    check-cast v23, Lorg/w3c/dom/events/EventTarget;

    .end local v23           #sme:Lorg/w3c/dom/smil/SMILMediaElement;
    move-object/from16 v0, v23

    move-object v1, v12

    invoke-static {v0, v1}, Lcom/android/mms/model/SmilHelper;->addMediaElementEventListeners(Lorg/w3c/dom/events/EventTarget;Lcom/android/mms/model/MediaModel;)V

    .line 235
    move-object/from16 v0, v18

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/drm/mobile2/OMADRMException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    :cond_5
    move v12, v15

    .line 243
    .end local v15           #mediaDuration:I
    .local v12, mediaDuration:I
    goto :goto_2

    .line 237
    .end local v12           #mediaDuration:I
    .restart local v15       #mediaDuration:I
    :catch_0
    move-exception v12

    .line 238
    .local v12, e:Landroid/drm/mobile2/OMADRMException;
    const-string v23, "Mms/slideshow"

    invoke-virtual {v12}, Landroid/drm/mobile2/OMADRMException;->getMessage()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object v2, v12

    invoke-static {v0, v1, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v12, v15

    .line 243
    .end local v15           #mediaDuration:I
    .local v12, mediaDuration:I
    goto :goto_2

    .line 239
    .end local v12           #mediaDuration:I
    .restart local v15       #mediaDuration:I
    :catch_1
    move-exception v12

    .line 240
    .local v12, e:Ljava/io/IOException;
    const-string v23, "Mms/slideshow"

    invoke-virtual {v12}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object v2, v12

    invoke-static {v0, v1, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v12, v15

    .line 243
    .end local v15           #mediaDuration:I
    .local v12, mediaDuration:I
    goto :goto_2

    .line 241
    .end local v12           #mediaDuration:I
    .restart local v15       #mediaDuration:I
    :catch_2
    move-exception v12

    .line 242
    .local v12, e:Ljava/lang/IllegalArgumentException;
    const-string v23, "Mms/slideshow"

    invoke-virtual {v12}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object v2, v12

    invoke-static {v0, v1, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v12, v15

    .end local v15           #mediaDuration:I
    .local v12, mediaDuration:I
    goto :goto_2

    .line 247
    .end local v12           #mediaDuration:I
    .end local p1           #doNotAddMedia:Z
    .restart local v15       #mediaDuration:I
    :cond_6
    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/smil/SMILParElement;->getDur()F

    move-result p1

    const/high16 v12, 0x447a

    mul-float p1, p1, v12

    move/from16 v0, p1

    float-to-int v0, v0

    move/from16 p1, v0

    move v0, v15

    move/from16 v1, p1

    if-le v0, v1, :cond_8

    .line 248
    new-instance p1, Lcom/android/mms/model/SlideModel;

    move-object/from16 v0, p1

    move v1, v15

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/mms/model/SlideModel;-><init>(ILjava/util/ArrayList;)V

    .line 249
    .local p1, slide:Lcom/android/mms/model/SlideModel;
    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/smil/SMILParElement;->getFill()S

    move-result v12

    move-object/from16 v0, p1

    move v1, v12

    invoke-virtual {v0, v1}, Lcom/android/mms/model/SlideModel;->setFill(S)V

    .line 250
    check-cast v19, Lorg/w3c/dom/events/EventTarget;

    .end local v19           #par:Lorg/w3c/dom/smil/SMILParElement;
    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/mms/model/SmilHelper;->addParElementEventListeners(Lorg/w3c/dom/events/EventTarget;Lcom/android/mms/model/SlideModel;)V

    .line 254
    if-nez v5, :cond_7

    .line 255
    move-object v0, v9

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    .end local v14           #j:I
    :cond_7
    :goto_3
    add-int/lit8 p1, v13, 0x1

    .end local v13           #i:I
    .local p1, i:I
    move/from16 v13, p1

    .end local p1           #i:I
    .restart local v13       #i:I
    goto/16 :goto_0

    .line 259
    .restart local v14       #j:I
    .restart local v19       #par:Lorg/w3c/dom/smil/SMILParElement;
    :cond_8
    new-instance p1, Lcom/android/mms/model/SlideModel;

    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/smil/SMILParElement;->getDur()F

    move-result v12

    const/high16 v14, 0x447a

    mul-float/2addr v12, v14

    float-to-int v12, v12

    move-object/from16 v0, p1

    move v1, v12

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/mms/model/SlideModel;-><init>(ILjava/util/ArrayList;)V

    .line 260
    .end local v14           #j:I
    .local p1, slide:Lcom/android/mms/model/SlideModel;
    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/smil/SMILParElement;->getFill()S

    move-result v12

    move-object/from16 v0, p1

    move v1, v12

    invoke-virtual {v0, v1}, Lcom/android/mms/model/SlideModel;->setFill(S)V

    .line 261
    check-cast v19, Lorg/w3c/dom/events/EventTarget;

    .end local v19           #par:Lorg/w3c/dom/smil/SMILParElement;
    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/mms/model/SmilHelper;->addParElementEventListeners(Lorg/w3c/dom/events/EventTarget;Lcom/android/mms/model/SlideModel;)V

    .line 265
    if-nez v5, :cond_7

    .line 266
    move-object v0, v9

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 281
    .end local v5           #doNotAddSlide:Z
    .end local v15           #mediaDuration:I
    .end local v16           #mediaNodes:Lorg/w3c/dom/NodeList;
    .end local v17           #mediaNum:I
    .end local v18           #mediaSet:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/MediaModel;>;"
    .end local v20           #parDuration:I
    .end local p1           #slide:Lcom/android/mms/model/SlideModel;
    :cond_9
    invoke-virtual {v11}, Ljava/util/ArrayList;->trimToSize()V

    move-object/from16 v5, p0

    .line 282
    invoke-static/range {v5 .. v11}, Lcom/android/mms/model/SlideshowModel;->createSlideshowModel(Landroid/content/Context;Lcom/google/android/mms/pdu/PduBody;Lorg/w3c/dom/smil/SMILDocument;Lcom/android/mms/model/LayoutModel;Ljava/util/ArrayList;ILjava/util/ArrayList;)Lcom/android/mms/model/SlideshowModel;

    move-result-object p0

    .end local p0
    return-object p0
.end method

.method public static createFromPduBody(Landroid/content/Context;Lcom/google/android/mms/pdu/PduBody;)Lcom/android/mms/model/SlideshowModel;
    .locals 27
    .parameter "context"
    .parameter "pb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 336
    const/4 v7, 0x0

    sput-boolean v7, Lcom/android/mms/model/SlideshowModel;->mIsRawAttachmentsPresent:Z

    .line 337
    const/4 v7, 0x0

    sput-boolean v7, Lcom/android/mms/model/SlideshowModel;->mIsDrmContentsPresent:Z

    .line 338
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lcom/android/mms/model/SmilHelper;->getDocument(Lcom/google/android/mms/pdu/PduBody;Landroid/content/Context;)Lorg/w3c/dom/smil/SMILDocument;

    move-result-object v7

    .line 341
    .local v7, document:Lorg/w3c/dom/smil/SMILDocument;
    invoke-interface {v7}, Lorg/w3c/dom/smil/SMILDocument;->getLayout()Lorg/w3c/dom/smil/SMILLayoutElement;

    move-result-object v8

    .line 342
    .local v8, sle:Lorg/w3c/dom/smil/SMILLayoutElement;
    invoke-interface {v8}, Lorg/w3c/dom/smil/SMILLayoutElement;->getRootLayout()Lorg/w3c/dom/smil/SMILRootLayoutElement;

    move-result-object v9

    .line 343
    .local v9, srle:Lorg/w3c/dom/smil/SMILRootLayoutElement;
    invoke-static {v9}, Lcom/android/mms/model/SlideshowModel;->createRegionModel(Lorg/w3c/dom/smil/SMILRootLayoutElement;)Lcom/android/mms/model/RegionModel;

    move-result-object v10

    .line 346
    .local v10, rootLayout:Lcom/android/mms/model/RegionModel;
    new-instance v9, Ljava/util/ArrayList;

    .end local v9           #srle:Lorg/w3c/dom/smil/SMILRootLayoutElement;
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 347
    .local v9, regions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/RegionModel;>;"
    invoke-static {v8, v9}, Lcom/android/mms/model/SlideshowModel;->makeRegionModelList(Lorg/w3c/dom/smil/SMILLayoutElement;Ljava/util/ArrayList;)I

    .line 348
    new-instance v8, Lcom/android/mms/model/LayoutModel;

    .end local v8           #sle:Lorg/w3c/dom/smil/SMILLayoutElement;
    invoke-direct {v8, v10, v9}, Lcom/android/mms/model/LayoutModel;-><init>(Lcom/android/mms/model/RegionModel;Ljava/util/ArrayList;)V

    .line 351
    .local v8, layouts:Lcom/android/mms/model/LayoutModel;
    invoke-interface {v7}, Lorg/w3c/dom/smil/SMILDocument;->getBody()Lorg/w3c/dom/smil/SMILElement;

    move-result-object v9

    .line 352
    .local v9, docBody:Lorg/w3c/dom/smil/SMILElement;
    invoke-interface {v9}, Lorg/w3c/dom/smil/SMILElement;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v21

    .line 353
    .local v21, slideNodes:Lorg/w3c/dom/NodeList;
    invoke-interface/range {v21 .. v21}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v22

    .line 354
    .local v22, slidesNum:I
    new-instance v9, Ljava/util/ArrayList;

    .end local v9           #docBody:Lorg/w3c/dom/smil/SMILElement;
    move-object v0, v9

    move/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 356
    .local v9, slides:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/SlideModel;>;"
    const/4 v10, 0x0

    .line 358
    .local v10, mediaCount:I
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Lcom/android/mms/model/SlideshowModel;->getAttachmentList(Landroid/content/Context;Lcom/google/android/mms/pdu/PduBody;Lorg/w3c/dom/NodeList;)Ljava/util/ArrayList;

    move-result-object v11

    .line 360
    .local v11, attachments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/AttachmentModel;>;"
    const/4 v12, 0x0

    .local v12, i:I
    move v13, v12

    .end local v12           #i:I
    .local v13, i:I
    :goto_0
    move v0, v13

    move/from16 v1, v22

    if-ge v0, v1, :cond_6

    .line 363
    move-object/from16 v0, v21

    move v1, v13

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v19

    check-cast v19, Lorg/w3c/dom/smil/SMILParElement;

    .line 364
    .local v19, par:Lorg/w3c/dom/smil/SMILParElement;
    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/smil/SMILParElement;->getDur()F

    move-result v10

    .end local v10           #mediaCount:I
    const/high16 v12, 0x447a

    mul-float/2addr v10, v12

    move v0, v10

    float-to-int v0, v0

    move/from16 v20, v0

    .line 366
    .local v20, parDuration:I
    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/smil/SMILParElement;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v16

    .line 367
    .local v16, mediaNodes:Lorg/w3c/dom/NodeList;
    invoke-interface/range {v16 .. v16}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v17

    .line 369
    .local v17, mediaNum:I
    const/4 v14, 0x0

    .line 371
    .local v14, mediaDuration:I
    new-instance v18, Ljava/util/ArrayList;

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 372
    .local v18, mediaSet:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/MediaModel;>;"
    move/from16 v10, v17

    .line 373
    .restart local v10       #mediaCount:I
    const/4 v12, 0x0

    .local v12, j:I
    move v15, v14

    .end local v14           #mediaDuration:I
    .local v15, mediaDuration:I
    move v14, v12

    .end local v12           #j:I
    .local v14, j:I
    :goto_1
    move v0, v14

    move/from16 v1, v17

    if-ge v0, v1, :cond_4

    .line 374
    move-object/from16 v0, v16

    move v1, v14

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v12

    invoke-static {v12}, Lcom/android/mms/model/SlideshowModel;->getSmilMediaElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/smil/SMILMediaElement;

    move-result-object v23

    .line 375
    .local v23, sme:Lorg/w3c/dom/smil/SMILMediaElement;
    if-nez v23, :cond_0

    .line 373
    .end local v23           #sme:Lorg/w3c/dom/smil/SMILMediaElement;
    :goto_2
    add-int/lit8 v12, v14, 0x1

    .end local v14           #j:I
    .restart local v12       #j:I
    move v14, v12

    .end local v12           #j:I
    .restart local v14       #j:I
    goto :goto_1

    .line 377
    .restart local v23       #sme:Lorg/w3c/dom/smil/SMILMediaElement;
    :cond_0
    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object v2, v8

    move-object/from16 v3, p1

    move/from16 v4, v20

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/mms/model/MediaModelFactory;->getMediaModel(Landroid/content/Context;Lorg/w3c/dom/smil/SMILMediaElement;Lcom/android/mms/model/LayoutModel;Lcom/google/android/mms/pdu/PduBody;I)Lcom/android/mms/model/MediaModel;

    move-result-object v12

    .line 382
    .local v12, media:Lcom/android/mms/model/MediaModel;
    invoke-virtual {v12}, Lcom/android/mms/model/MediaModel;->getDuration()I

    move-result v15

    .line 383
    const-string v24, "Mms/slideshow"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "mediaDuration : "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    invoke-virtual {v12}, Lcom/android/mms/model/MediaModel;->getContentType()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/google/android/mms/ContentType;->isDrmType(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_1

    .line 391
    const/16 v24, 0x1

    sput-boolean v24, Lcom/android/mms/model/SlideshowModel;->mIsDrmContentsPresent:Z

    .line 393
    :cond_1
    invoke-virtual {v12}, Lcom/android/mms/model/MediaModel;->getContentType()Ljava/lang/String;

    move-result-object v24

    const-string v25, "text/x-vCard"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v24

    if-nez v24, :cond_2

    invoke-virtual {v12}, Lcom/android/mms/model/MediaModel;->getContentType()Ljava/lang/String;

    move-result-object v24

    const-string v25, "text/x-vCalendar"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v24

    if-nez v24, :cond_2

    invoke-virtual {v12}, Lcom/android/mms/model/MediaModel;->getContentType()Ljava/lang/String;

    move-result-object v24

    const-string v25, "text/x-vNote"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v24

    if-nez v24, :cond_2

    invoke-virtual {v12}, Lcom/android/mms/model/MediaModel;->getContentType()Ljava/lang/String;

    move-result-object v24

    const-string v25, "text/x-vtodo"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_3

    .line 397
    :cond_2
    const/4 v12, 0x1

    sput-boolean v12, Lcom/android/mms/model/SlideshowModel;->mIsRawAttachmentsPresent:Z
    :try_end_0
    .catch Landroid/drm/mobile2/OMADRMException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/android/mms/UnsupportContentTypeException; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_2

    .line 411
    .end local v12           #media:Lcom/android/mms/model/MediaModel;
    .end local v23           #sme:Lorg/w3c/dom/smil/SMILMediaElement;
    :catch_0
    move-exception v12

    .line 412
    .local v12, e:Landroid/drm/mobile2/OMADRMException;
    const-string v23, "Mms/slideshow"

    invoke-virtual {v12}, Landroid/drm/mobile2/OMADRMException;->getMessage()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object v2, v12

    invoke-static {v0, v1, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 409
    .local v12, media:Lcom/android/mms/model/MediaModel;
    .restart local v23       #sme:Lorg/w3c/dom/smil/SMILMediaElement;
    :cond_3
    :try_start_1
    check-cast v23, Lorg/w3c/dom/events/EventTarget;

    .end local v23           #sme:Lorg/w3c/dom/smil/SMILMediaElement;
    move-object/from16 v0, v23

    move-object v1, v12

    invoke-static {v0, v1}, Lcom/android/mms/model/SmilHelper;->addMediaElementEventListeners(Lorg/w3c/dom/events/EventTarget;Lcom/android/mms/model/MediaModel;)V

    .line 410
    move-object/from16 v0, v18

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/drm/mobile2/OMADRMException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/android/mms/UnsupportContentTypeException; {:try_start_1 .. :try_end_1} :catch_3

    goto/16 :goto_2

    .line 413
    .end local v12           #media:Lcom/android/mms/model/MediaModel;
    :catch_1
    move-exception v12

    .line 414
    .local v12, e:Ljava/io/IOException;
    const-string v23, "Mms/slideshow"

    invoke-virtual {v12}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object v2, v12

    invoke-static {v0, v1, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 415
    .end local v12           #e:Ljava/io/IOException;
    :catch_2
    move-exception v12

    .line 416
    .local v12, e:Ljava/lang/IllegalArgumentException;
    const-string v23, "Mms/slideshow"

    invoke-virtual {v12}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object v2, v12

    invoke-static {v0, v1, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 417
    .end local v12           #e:Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v12

    .line 418
    .local v12, e:Lcom/android/mms/UnsupportContentTypeException;
    const-string v23, "Mms/slideshow"

    invoke-virtual {v12}, Lcom/android/mms/UnsupportContentTypeException;->getMessage()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object v2, v12

    invoke-static {v0, v1, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 422
    .end local v12           #e:Lcom/android/mms/UnsupportContentTypeException;
    :cond_4
    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/smil/SMILParElement;->getDur()F

    move-result v12

    const/high16 v14, 0x447a

    mul-float/2addr v12, v14

    float-to-int v12, v12

    if-le v15, v12, :cond_5

    .line 423
    .end local v14           #j:I
    new-instance v12, Lcom/android/mms/model/SlideModel;

    move-object v0, v12

    move v1, v15

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/mms/model/SlideModel;-><init>(ILjava/util/ArrayList;)V

    .line 424
    .local v12, slide:Lcom/android/mms/model/SlideModel;
    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/smil/SMILParElement;->getFill()S

    move-result v14

    invoke-virtual {v12, v14}, Lcom/android/mms/model/SlideModel;->setFill(S)V

    .line 425
    check-cast v19, Lorg/w3c/dom/events/EventTarget;

    .end local v19           #par:Lorg/w3c/dom/smil/SMILParElement;
    move-object/from16 v0, v19

    move-object v1, v12

    invoke-static {v0, v1}, Lcom/android/mms/model/SmilHelper;->addParElementEventListeners(Lorg/w3c/dom/events/EventTarget;Lcom/android/mms/model/SlideModel;)V

    .line 426
    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 360
    .end local v15           #mediaDuration:I
    :goto_3
    add-int/lit8 v12, v13, 0x1

    .end local v13           #i:I
    .local v12, i:I
    move v13, v12

    .end local v12           #i:I
    .restart local v13       #i:I
    goto/16 :goto_0

    .line 428
    .restart local v15       #mediaDuration:I
    .restart local v19       #par:Lorg/w3c/dom/smil/SMILParElement;
    :cond_5
    new-instance v12, Lcom/android/mms/model/SlideModel;

    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/smil/SMILParElement;->getDur()F

    move-result v14

    const/high16 v15, 0x447a

    mul-float/2addr v14, v15

    float-to-int v14, v14

    move-object v0, v12

    move v1, v14

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/mms/model/SlideModel;-><init>(ILjava/util/ArrayList;)V

    .line 429
    .end local v15           #mediaDuration:I
    .local v12, slide:Lcom/android/mms/model/SlideModel;
    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/smil/SMILParElement;->getFill()S

    move-result v14

    invoke-virtual {v12, v14}, Lcom/android/mms/model/SlideModel;->setFill(S)V

    .line 430
    check-cast v19, Lorg/w3c/dom/events/EventTarget;

    .end local v19           #par:Lorg/w3c/dom/smil/SMILParElement;
    move-object/from16 v0, v19

    move-object v1, v12

    invoke-static {v0, v1}, Lcom/android/mms/model/SmilHelper;->addParElementEventListeners(Lorg/w3c/dom/events/EventTarget;Lcom/android/mms/model/SlideModel;)V

    .line 431
    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 436
    .end local v12           #slide:Lcom/android/mms/model/SlideModel;
    .end local v16           #mediaNodes:Lorg/w3c/dom/NodeList;
    .end local v17           #mediaNum:I
    .end local v18           #mediaSet:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/MediaModel;>;"
    .end local v20           #parDuration:I
    :cond_6
    invoke-virtual {v11}, Ljava/util/ArrayList;->trimToSize()V

    .line 437
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v7

    move-object v3, v8

    move-object v4, v9

    move v5, v10

    move-object v6, v11

    invoke-static/range {v0 .. v6}, Lcom/android/mms/model/SlideshowModel;->createSlideshowModel(Landroid/content/Context;Lcom/google/android/mms/pdu/PduBody;Lorg/w3c/dom/smil/SMILDocument;Lcom/android/mms/model/LayoutModel;Ljava/util/ArrayList;ILjava/util/ArrayList;)Lcom/android/mms/model/SlideshowModel;

    move-result-object p0

    .end local p0
    return-object p0
.end method

.method public static createNew(Landroid/content/Context;)Lcom/android/mms/model/SlideshowModel;
    .locals 1
    .parameter "context"

    .prologue
    .line 135
    new-instance v0, Lcom/android/mms/model/SlideshowModel;

    invoke-direct {v0, p0}, Lcom/android/mms/model/SlideshowModel;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private static createRegionModel(Lorg/w3c/dom/smil/SMILRootLayoutElement;)Lcom/android/mms/model/RegionModel;
    .locals 6
    .parameter "srle"

    .prologue
    const/4 v2, 0x0

    .line 537
    invoke-interface {p0}, Lorg/w3c/dom/smil/SMILRootLayoutElement;->getWidth()I

    move-result v4

    .line 538
    .local v4, w:I
    invoke-interface {p0}, Lorg/w3c/dom/smil/SMILRootLayoutElement;->getHeight()I

    move-result v5

    .line 539
    .local v5, h:I
    if-eqz v4, :cond_0

    if-nez v5, :cond_1

    .line 540
    :cond_0
    invoke-static {}, Lcom/android/mms/layout/LayoutManager;->getInstance()Lcom/android/mms/layout/LayoutManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/layout/LayoutManager;->getLayoutParameters()Lcom/android/mms/layout/LayoutParameters;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/mms/layout/LayoutParameters;->getWidth()I

    move-result v4

    .line 541
    invoke-static {}, Lcom/android/mms/layout/LayoutManager;->getInstance()Lcom/android/mms/layout/LayoutManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/layout/LayoutManager;->getLayoutParameters()Lcom/android/mms/layout/LayoutParameters;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/mms/layout/LayoutParameters;->getHeight()I

    move-result v5

    .line 542
    invoke-interface {p0, v4}, Lorg/w3c/dom/smil/SMILRootLayoutElement;->setWidth(I)V

    .line 543
    invoke-interface {p0, v5}, Lorg/w3c/dom/smil/SMILRootLayoutElement;->setHeight(I)V

    .line 545
    :cond_1
    new-instance v0, Lcom/android/mms/model/RegionModel;

    const/4 v1, 0x0

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/model/RegionModel;-><init>(Ljava/lang/String;IIII)V

    .line 546
    .local v0, rootLayout:Lcom/android/mms/model/RegionModel;
    return-object v0
.end method

.method private static createSlideshowModel(Landroid/content/Context;Lcom/google/android/mms/pdu/PduBody;Lorg/w3c/dom/smil/SMILDocument;Lcom/android/mms/model/LayoutModel;Ljava/util/ArrayList;ILjava/util/ArrayList;)Lcom/android/mms/model/SlideshowModel;
    .locals 7
    .parameter "context"
    .parameter "pb"
    .parameter "document"
    .parameter "layouts"
    .parameter
    .parameter "mediaCount"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/mms/pdu/PduBody;",
            "Lorg/w3c/dom/smil/SMILDocument;",
            "Lcom/android/mms/model/LayoutModel;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/model/SlideModel;",
            ">;I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/model/AttachmentModel;",
            ">;)",
            "Lcom/android/mms/model/SlideshowModel;"
        }
    .end annotation

    .prologue
    .line 485
    .local p4, slides:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/SlideModel;>;"
    .local p6, attachments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/AttachmentModel;>;"
    new-instance v0, Lcom/android/mms/model/SlideshowModel;

    move-object v1, p3

    move-object v2, p4

    move-object v3, p6

    move-object v4, p2

    move-object v5, p1

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/model/SlideshowModel;-><init>(Lcom/android/mms/model/LayoutModel;Ljava/util/ArrayList;Ljava/util/ArrayList;Lorg/w3c/dom/smil/SMILDocument;Lcom/google/android/mms/pdu/PduBody;Landroid/content/Context;)V

    .line 488
    .local v0, slideshow:Lcom/android/mms/model/SlideshowModel;
    sget-boolean p1, Lcom/android/mms/model/SlideshowModel;->mIsRawAttachmentsPresent:Z

    .end local p1
    if-eqz p1, :cond_0

    invoke-static {}, Lcom/android/mms/model/SlideshowModel;->getAddAttachmentSlide()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 489
    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result p2

    .line 492
    .local p2, size:I
    new-instance p3, Lcom/android/mms/model/SlideModel;

    .end local p3
    invoke-direct {p3, v0}, Lcom/android/mms/model/SlideModel;-><init>(Lcom/android/mms/model/SlideshowModel;)V

    .line 494
    .local p3, slide:Lcom/android/mms/model/SlideModel;
    new-instance p4, Lcom/android/mms/model/TextModel;

    .end local p4           #slides:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/SlideModel;>;"
    const-string p1, "text/plain"

    new-instance p6, Ljava/lang/StringBuilder;

    .end local p6           #attachments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/AttachmentModel;>;"
    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cid:text_"

    invoke-virtual {p6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p6

    invoke-virtual {p6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p6

    const-string v1, ".txt"

    invoke-virtual {p6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p6

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/model/LayoutModel;->getTextRegion()Lcom/android/mms/model/RegionModel;

    move-result-object v1

    invoke-direct {p4, p0, p1, p6, v1}, Lcom/android/mms/model/TextModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/model/RegionModel;)V

    .line 496
    .local p4, text:Lcom/android/mms/model/TextModel;
    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->getRawAttachmentsSize()I

    move-result p1

    .line 498
    .local p1, fileCount:I
    const/4 p6, 0x1

    if-ne p1, p6, :cond_3

    .line 499
    const p1, 0x7f090167

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .end local p1           #fileCount:I
    move-result-object p0

    .line 503
    .local p0, detail:Ljava/lang/String;
    :goto_0
    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->getAttachmentList()Ljava/lang/String;

    move-result-object p1

    .line 504
    .local p1, name:Ljava/lang/String;
    new-instance p6, Ljava/lang/StringBuffer;

    invoke-direct {p6, p0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string p0, "\n\n"

    .end local p0           #detail:Ljava/lang/String;
    invoke-virtual {p6, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    .line 505
    .local p0, shown:Ljava/lang/String;
    invoke-virtual {p4, p0}, Lcom/android/mms/model/TextModel;->setText(Ljava/lang/CharSequence;)V

    .line 506
    invoke-virtual {p3, p4}, Lcom/android/mms/model/SlideModel;->add(Lcom/android/mms/model/MediaModel;)Z

    .line 508
    const/4 p0, 0x1

    if-ne p2, p0, :cond_4

    .end local p0           #shown:Ljava/lang/String;
    if-nez p5, :cond_4

    .line 509
    const/4 p0, 0x1

    sub-int p0, p2, p0

    invoke-virtual {v0, p0, p3}, Lcom/android/mms/model/SlideshowModel;->add(ILcom/android/mms/model/SlideModel;)V

    .line 510
    invoke-virtual {v0, p2}, Lcom/android/mms/model/SlideshowModel;->remove(I)Lcom/android/mms/model/SlideModel;

    .line 514
    :goto_1
    const/4 p0, 0x0

    invoke-static {p0}, Lcom/android/mms/model/SlideshowModel;->setAddAttachmentSlide(Z)V

    .line 516
    invoke-static {}, Lcom/android/mms/model/SlideshowModel;->getCheckMessageSizeforSlide()Z

    move-result p0

    if-nez p0, :cond_0

    .line 517
    const/4 p0, 0x1

    invoke-static {p0}, Lcom/android/mms/model/SlideshowModel;->setCheckMessageSizeforSlide(Z)V

    .line 523
    .end local p1           #name:Ljava/lang/String;
    .end local p2           #size:I
    .end local p3           #slide:Lcom/android/mms/model/SlideModel;
    .end local p4           #text:Lcom/android/mms/model/TextModel;
    :cond_0
    invoke-static {}, Lcom/android/mms/model/SlideshowModel;->getAddAttachmentSlide()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 524
    const/4 p0, 0x0

    invoke-static {p0}, Lcom/android/mms/model/SlideshowModel;->setAddAttachmentSlide(Z)V

    .line 527
    :cond_1
    invoke-static {}, Lcom/android/mms/model/SlideshowModel;->getCheckMessageSizeforSlide()Z

    move-result p0

    if-nez p0, :cond_2

    .line 528
    const/4 p0, 0x1

    invoke-static {p0}, Lcom/android/mms/model/SlideshowModel;->setCheckMessageSizeforSlide(Z)V

    .line 532
    :cond_2
    invoke-virtual {v0, v0}, Lcom/android/mms/model/SlideshowModel;->registerModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    .line 533
    return-object v0

    .line 501
    .local p0, context:Landroid/content/Context;
    .local p1, fileCount:I
    .restart local p2       #size:I
    .restart local p3       #slide:Lcom/android/mms/model/SlideModel;
    .restart local p4       #text:Lcom/android/mms/model/TextModel;
    :cond_3
    const p1, 0x7f090168

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .end local p1           #fileCount:I
    move-result-object p0

    .local p0, detail:Ljava/lang/String;
    goto :goto_0

    .line 512
    .end local p0           #detail:Ljava/lang/String;
    .local p1, name:Ljava/lang/String;
    :cond_4
    invoke-virtual {v0, p2, p3}, Lcom/android/mms/model/SlideshowModel;->add(ILcom/android/mms/model/SlideModel;)V

    goto :goto_1
.end method

.method private static extractCID(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "slideMediaName"

    .prologue
    const-string v1, "cid:"

    .line 687
    const-string v0, "cid:"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 688
    const-string v0, "cid:"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 690
    :cond_0
    return-object p0
.end method

.method private static extractLocation(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "compareContentLoc"

    .prologue
    const-string v2, "\""

    .line 679
    const-string v1, "\""

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "\""

    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 680
    const/16 v1, 0x22

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 681
    .local v0, endIndex:I
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 683
    .end local v0           #endIndex:I
    :cond_0
    return-object p0
.end method

.method public static getAddAttachmentSlide()Z
    .locals 2

    .prologue
    .line 746
    const/4 v0, 0x0

    .line 747
    .local v0, resultValue:Z
    sget-boolean v1, Lcom/android/mms/model/SlideshowModel;->mRawAttachmentAddSlide:Z

    if-eqz v1, :cond_0

    .line 748
    sget-boolean v0, Lcom/android/mms/model/SlideshowModel;->mRawAttachmentAddSlide:Z

    .line 750
    :cond_0
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/mms/model/SlideshowModel;->mRawAttachmentAddSlide:Z

    .line 751
    return v0
.end method

.method public static getAddAttachmentSlideForCompose()Z
    .locals 2

    .prologue
    .line 772
    const/4 v0, 0x0

    .line 773
    .local v0, resultValue:Z
    sget-boolean v1, Lcom/android/mms/model/SlideshowModel;->mRawAttachmentAddSlideforCompose:Z

    if-eqz v1, :cond_0

    .line 774
    sget-boolean v0, Lcom/android/mms/model/SlideshowModel;->mRawAttachmentAddSlideforCompose:Z

    .line 776
    :cond_0
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/mms/model/SlideshowModel;->mRawAttachmentAddSlideforCompose:Z

    .line 777
    return v0
.end method

.method private static getAttachmentList(Landroid/content/Context;Lcom/google/android/mms/pdu/PduBody;Lorg/w3c/dom/NodeList;)Ljava/util/ArrayList;
    .locals 19
    .parameter "context"
    .parameter "pb"
    .parameter "slideNodes"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/mms/pdu/PduBody;",
            "Lorg/w3c/dom/NodeList;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/model/AttachmentModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 575
    const/4 v6, 0x0

    .line 576
    .local v6, slideMediaCount:I
    invoke-interface/range {p2 .. p2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v11

    .line 577
    .local v11, slidesNum:I
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 579
    .local v17, slideMediaSrc:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .local v5, i:I
    move v10, v6

    .end local v6           #slideMediaCount:I
    .local v10, slideMediaCount:I
    :goto_0
    if-ge v5, v11, :cond_2

    .line 580
    move-object/from16 v0, p2

    move v1, v5

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    check-cast v6, Lorg/w3c/dom/smil/SMILParElement;

    .line 581
    .local v6, par:Lorg/w3c/dom/smil/SMILParElement;
    invoke-interface {v6}, Lorg/w3c/dom/smil/SMILParElement;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v8

    .line 582
    .local v8, mediaNodes:Lorg/w3c/dom/NodeList;
    invoke-interface {v8}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v9

    .line 583
    .local v9, mediaNum:I
    const/4 v6, 0x0

    .local v6, j:I
    :goto_1
    if-ge v6, v9, :cond_1

    .line 585
    invoke-interface {v8, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    invoke-static {v7}, Lcom/android/mms/model/SlideshowModel;->getSmilMediaElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/smil/SMILMediaElement;

    move-result-object v7

    .line 586
    .local v7, media:Lorg/w3c/dom/smil/SMILMediaElement;
    if-eqz v7, :cond_0

    .line 587
    invoke-interface {v7}, Lorg/w3c/dom/smil/SMILMediaElement;->getSrc()Ljava/lang/String;

    move-result-object v7

    .line 588
    .local v7, src:Ljava/lang/String;
    move-object/from16 v0, v17

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 589
    const-string v12, "Mms/slideshow"

    invoke-static {v12, v7}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    .end local v7           #src:Ljava/lang/String;
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 592
    :cond_1
    add-int v6, v10, v9

    .line 579
    .end local v10           #slideMediaCount:I
    .local v6, slideMediaCount:I
    add-int/lit8 v5, v5, 0x1

    move v10, v6

    .end local v6           #slideMediaCount:I
    .restart local v10       #slideMediaCount:I
    goto :goto_0

    .line 595
    .end local v8           #mediaNodes:Lorg/w3c/dom/NodeList;
    .end local v9           #mediaNum:I
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduBody;->getPartsNum()I

    move-result v13

    .line 596
    .local v13, numOfParts:I
    new-instance p2, Ljava/util/ArrayList;

    .end local p2
    move-object/from16 v0, p2

    move v1, v13

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 600
    .local p2, attachments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/AttachmentModel;>;"
    const/4 v5, 0x0

    .local v5, j:I
    move v10, v5

    .end local v5           #j:I
    .end local v11           #slidesNum:I
    .local v10, j:I
    :goto_2
    if-ge v10, v13, :cond_c

    .line 601
    move-object/from16 v0, p1

    move v1, v10

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v14

    .line 602
    .local v14, p:Lcom/google/android/mms/pdu/PduPart;
    new-instance v5, Ljava/lang/String;

    invoke-virtual {v14}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    .line 603
    .local v5, contentType:Ljava/lang/String;
    const/4 v6, 0x0

    .line 604
    .local v6, mediaName:Ljava/lang/String;
    const-string v7, "application/smil"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 600
    :goto_3
    add-int/lit8 v5, v10, 0x1

    .end local v10           #j:I
    .local v5, j:I
    move v10, v5

    .end local v5           #j:I
    .restart local v10       #j:I
    goto :goto_2

    .line 607
    .local v5, contentType:Ljava/lang/String;
    :cond_3
    invoke-virtual {v14}, Lcom/google/android/mms/pdu/PduPart;->getName()[B

    move-result-object v7

    if-eqz v7, :cond_4

    .line 608
    new-instance v6, Ljava/lang/String;

    .end local v6           #mediaName:Ljava/lang/String;
    invoke-virtual {v14}, Lcom/google/android/mms/pdu/PduPart;->getName()[B

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>([B)V

    .line 611
    .restart local v6       #mediaName:Ljava/lang/String;
    :cond_4
    if-nez v6, :cond_f

    invoke-virtual {v14}, Lcom/google/android/mms/pdu/PduPart;->getFilename()[B

    move-result-object v7

    if-eqz v7, :cond_f

    .line 612
    new-instance v6, Ljava/lang/String;

    .end local v6           #mediaName:Ljava/lang/String;
    invoke-virtual {v14}, Lcom/google/android/mms/pdu/PduPart;->getFilename()[B

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>([B)V

    .restart local v6       #mediaName:Ljava/lang/String;
    move-object v12, v6

    .line 616
    .end local v6           #mediaName:Ljava/lang/String;
    .local v12, mediaName:Ljava/lang/String;
    :goto_4
    if-eqz v12, :cond_e

    .line 617
    invoke-static {v14, v5, v12}, Lcom/android/mms/model/SlideshowModel;->checkContentType(Lcom/google/android/mms/pdu/PduPart;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v8, v5

    .line 621
    .end local v5           #contentType:Ljava/lang/String;
    .local v8, contentType:Ljava/lang/String;
    :goto_5
    invoke-static {v14}, Lcom/android/mms/model/SlideshowModel;->checkContentLocation(Lcom/google/android/mms/pdu/PduPart;)Ljava/lang/String;

    move-result-object v7

    .line 624
    .local v7, contentLoc:Ljava/lang/String;
    invoke-static {v14}, Lcom/android/mms/model/SlideshowModel;->checkContentId(Lcom/google/android/mms/pdu/PduPart;)Ljava/lang/String;

    move-result-object v6

    .line 626
    .local v6, contentId:Ljava/lang/String;
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v16

    .line 627
    .local v16, slideMediaNum:I
    const/4 v5, 0x0

    .line 628
    .local v5, isSlideMedia:Z
    const/4 v9, 0x0

    .local v9, k:I
    move v11, v9

    .end local v9           #k:I
    .local v11, k:I
    move v9, v5

    .end local v5           #isSlideMedia:Z
    .local v9, isSlideMedia:Z
    :goto_6
    move v0, v11

    move/from16 v1, v16

    if-ge v0, v1, :cond_7

    .line 629
    if-eqz v7, :cond_d

    move-object/from16 v0, v17

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_d

    .line 630
    move-object/from16 v0, v17

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lcom/android/mms/model/SlideshowModel;->extractCID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 632
    .local v15, slideMediaName:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/mms/model/SlideshowModel;->extractLocation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 635
    .local v5, compareContentLoc:Ljava/lang/String;
    invoke-virtual {v5, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .end local v5           #compareContentLoc:Ljava/lang/String;
    if-eqz v5, :cond_5

    .line 636
    invoke-static {v15}, Lcom/android/mms/model/SlideshowModel;->checkSlideMedia(Ljava/lang/String;)Z

    move-result v5

    .line 628
    .end local v9           #isSlideMedia:Z
    .end local v15           #slideMediaName:Ljava/lang/String;
    .local v5, isSlideMedia:Z
    :goto_7
    add-int/lit8 v9, v11, 0x1

    .end local v11           #k:I
    .local v9, k:I
    move v11, v9

    .end local v9           #k:I
    .restart local v11       #k:I
    move v9, v5

    .end local v5           #isSlideMedia:Z
    .local v9, isSlideMedia:Z
    goto :goto_6

    .line 637
    .restart local v15       #slideMediaName:Ljava/lang/String;
    :cond_5
    if-eqz v6, :cond_d

    .line 638
    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 639
    invoke-static {v15}, Lcom/android/mms/model/SlideshowModel;->checkSlideMedia(Ljava/lang/String;)Z

    move-result v5

    .end local v9           #isSlideMedia:Z
    .restart local v5       #isSlideMedia:Z
    goto :goto_7

    .line 640
    .end local v5           #isSlideMedia:Z
    .restart local v9       #isSlideMedia:Z
    :cond_6
    const/16 v5, 0x2e

    invoke-virtual {v15, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    if-lez v5, :cond_d

    .line 641
    const/4 v5, 0x0

    const/16 v18, 0x2e

    move-object v0, v15

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v18

    move-object v0, v15

    move v1, v5

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 643
    .local v5, tempMediaName:Ljava/lang/String;
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .end local v5           #tempMediaName:Ljava/lang/String;
    if-eqz v5, :cond_d

    .line 644
    invoke-static {v15}, Lcom/android/mms/model/SlideshowModel;->checkSlideMedia(Ljava/lang/String;)Z

    move-result v5

    .end local v9           #isSlideMedia:Z
    .local v5, isSlideMedia:Z
    goto :goto_7

    .line 651
    .end local v5           #isSlideMedia:Z
    .end local v15           #slideMediaName:Ljava/lang/String;
    .restart local v9       #isSlideMedia:Z
    :cond_7
    if-nez v9, :cond_a

    .line 653
    const/4 v6, 0x0

    .line 654
    .local v6, object:Lcom/android/mms/model/AttachmentModel;
    invoke-virtual {v14}, Lcom/google/android/mms/pdu/PduPart;->getData()[B

    move-result-object v5

    if-nez v5, :cond_b

    .line 656
    :try_start_0
    new-instance v5, Lcom/android/mms/model/AttachmentModel;

    invoke-virtual {v14}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v9

    .end local v9           #isSlideMedia:Z
    move-object v0, v5

    move-object/from16 v1, p0

    move-object v2, v8

    move-object v3, v7

    move-object v4, v9

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/mms/model/AttachmentModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 668
    .end local v6           #object:Lcom/android/mms/model/AttachmentModel;
    .local v5, object:Lcom/android/mms/model/AttachmentModel;
    :cond_8
    :goto_8
    if-eqz v5, :cond_9

    .line 669
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v6

    move-object/from16 v0, p2

    move v1, v6

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 671
    :cond_9
    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/mms/model/SlideshowModel;->mIsRawAttachmentsPresent:Z

    .end local v5           #object:Lcom/android/mms/model/AttachmentModel;
    :cond_a
    move-object v6, v12

    .end local v12           #mediaName:Ljava/lang/String;
    .local v6, mediaName:Ljava/lang/String;
    move-object v5, v8

    .end local v8           #contentType:Ljava/lang/String;
    .local v5, contentType:Ljava/lang/String;
    goto/16 :goto_3

    .line 658
    .end local v5           #contentType:Ljava/lang/String;
    .local v6, object:Lcom/android/mms/model/AttachmentModel;
    .restart local v8       #contentType:Ljava/lang/String;
    .restart local v12       #mediaName:Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 660
    .local v5, e:Lcom/google/android/mms/MmsException;
    invoke-virtual {v5}, Lcom/google/android/mms/MmsException;->printStackTrace()V

    move-object v5, v6

    .line 661
    .end local v6           #object:Lcom/android/mms/model/AttachmentModel;
    .local v5, object:Lcom/android/mms/model/AttachmentModel;
    goto :goto_8

    .line 663
    .end local v5           #object:Lcom/android/mms/model/AttachmentModel;
    .restart local v6       #object:Lcom/android/mms/model/AttachmentModel;
    .restart local v9       #isSlideMedia:Z
    :cond_b
    new-instance v5, Lcom/android/mms/model/AttachmentModel;

    invoke-virtual {v14}, Lcom/google/android/mms/pdu/PduPart;->getData()[B

    move-result-object v6

    .end local v6           #object:Lcom/android/mms/model/AttachmentModel;
    move-object v0, v5

    move-object/from16 v1, p0

    move-object v2, v8

    move-object v3, v7

    move-object v4, v6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/mms/model/AttachmentModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[B)V

    .line 664
    .restart local v5       #object:Lcom/android/mms/model/AttachmentModel;
    invoke-virtual {v14}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v6

    if-eqz v6, :cond_8

    .line 665
    invoke-virtual {v14}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/mms/model/AttachmentModel;->setUri(Landroid/net/Uri;)V

    goto :goto_8

    .line 675
    .end local v5           #object:Lcom/android/mms/model/AttachmentModel;
    .end local v7           #contentLoc:Ljava/lang/String;
    .end local v8           #contentType:Ljava/lang/String;
    .end local v9           #isSlideMedia:Z
    .end local v11           #k:I
    .end local v12           #mediaName:Ljava/lang/String;
    .end local v14           #p:Lcom/google/android/mms/pdu/PduPart;
    .end local v16           #slideMediaNum:I
    :cond_c
    return-object p2

    .local v6, contentId:Ljava/lang/String;
    .restart local v7       #contentLoc:Ljava/lang/String;
    .restart local v8       #contentType:Ljava/lang/String;
    .restart local v9       #isSlideMedia:Z
    .restart local v11       #k:I
    .restart local v12       #mediaName:Ljava/lang/String;
    .restart local v14       #p:Lcom/google/android/mms/pdu/PduPart;
    .restart local v16       #slideMediaNum:I
    :cond_d
    move v5, v9

    .end local v9           #isSlideMedia:Z
    .local v5, isSlideMedia:Z
    goto/16 :goto_7

    .end local v6           #contentId:Ljava/lang/String;
    .end local v7           #contentLoc:Ljava/lang/String;
    .end local v8           #contentType:Ljava/lang/String;
    .end local v11           #k:I
    .end local v16           #slideMediaNum:I
    .local v5, contentType:Ljava/lang/String;
    :cond_e
    move-object v8, v5

    .end local v5           #contentType:Ljava/lang/String;
    .restart local v8       #contentType:Ljava/lang/String;
    goto/16 :goto_5

    .end local v8           #contentType:Ljava/lang/String;
    .end local v12           #mediaName:Ljava/lang/String;
    .restart local v5       #contentType:Ljava/lang/String;
    .local v6, mediaName:Ljava/lang/String;
    :cond_f
    move-object v12, v6

    .end local v6           #mediaName:Ljava/lang/String;
    .restart local v12       #mediaName:Ljava/lang/String;
    goto/16 :goto_4
.end method

.method public static getCheckMessageSizeforSlide()Z
    .locals 1

    .prologue
    .line 764
    sget-boolean v0, Lcom/android/mms/model/SlideshowModel;->mCheckMessageSize:Z

    .line 765
    .local v0, resultValue:Z
    return v0
.end method

.method public static getPduBody(Landroid/content/Context;Landroid/net/Uri;)Lcom/google/android/mms/pdu/PduBody;
    .locals 4
    .parameter "context"
    .parameter "msg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 973
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v1

    .line 974
    .local v1, p:Lcom/google/android/mms/pdu/PduPersister;
    invoke-virtual {v1, p1}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v2

    .line 976
    .local v2, pdu:Lcom/google/android/mms/pdu/GenericPdu;
    invoke-virtual {v2}, Lcom/google/android/mms/pdu/GenericPdu;->getMessageType()I

    move-result v0

    .line 977
    .local v0, msgType:I
    const/16 v3, 0x80

    if-eq v0, v3, :cond_0

    const/16 v3, 0x84

    if-ne v0, v3, :cond_1

    .line 979
    :cond_0
    check-cast v2, Lcom/google/android/mms/pdu/MultimediaMessagePdu;

    .end local v2           #pdu:Lcom/google/android/mms/pdu/GenericPdu;
    invoke-virtual {v2}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->getBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v3

    return-object v3

    .line 981
    .restart local v2       #pdu:Lcom/google/android/mms/pdu/GenericPdu;
    :cond_1
    new-instance v3, Lcom/google/android/mms/MmsException;

    invoke-direct {v3}, Lcom/google/android/mms/MmsException;-><init>()V

    throw v3
.end method

.method private static getSmilMediaElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/smil/SMILMediaElement;
    .locals 7
    .parameter "node"

    .prologue
    .line 552
    move-object v3, p0

    .line 556
    .local v3, mNode:Lorg/w3c/dom/Node;
    const/4 v5, 0x0

    .line 558
    .local v5, mSME:Lorg/w3c/dom/smil/SMILMediaElement;
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v4

    .line 559
    .local v4, mNodeList:Lorg/w3c/dom/NodeList;
    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    .line 561
    .local v2, mChildCount:I
    instance-of v6, v3, Lorg/w3c/dom/smil/SMILMediaElement;

    if-eqz v6, :cond_1

    .line 562
    move-object v0, v3

    check-cast v0, Lorg/w3c/dom/smil/SMILMediaElement;

    move-object v5, v0

    .line 568
    :cond_0
    return-object v5

    .line 564
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 565
    invoke-interface {v4, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    invoke-static {v6}, Lcom/android/mms/model/SlideshowModel;->getSmilMediaElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/smil/SMILMediaElement;

    move-result-object v5

    .line 564
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static getSubject(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 5
    .parameter "context"
    .parameter "msg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 988
    const/4 v1, 0x0

    .line 990
    .local v1, subStr:Ljava/lang/String;
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v0

    check-cast v0, Lcom/google/android/mms/pdu/MultimediaMessagePdu;

    .line 992
    .local v0, pdu:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    if-eqz v0, :cond_1

    .line 993
    invoke-virtual {v0}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->getSubject()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v2

    .line 994
    .local v2, subject:Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v2, :cond_0

    .line 995
    invoke-virtual {v2}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v1

    move-object v3, v1

    .line 1001
    .end local v2           #subject:Lcom/google/android/mms/pdu/EncodedStringValue;
    :goto_0
    return-object v3

    .restart local v2       #subject:Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_0
    move-object v3, v4

    .line 998
    goto :goto_0

    .end local v2           #subject:Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_1
    move-object v3, v4

    .line 1001
    goto :goto_0
.end method

.method private makePduBody(Landroid/content/Context;Lorg/w3c/dom/smil/SMILDocument;Z)Lcom/google/android/mms/pdu/PduBody;
    .locals 26
    .parameter "context"
    .parameter "document"
    .parameter "isMakingCopy"

    .prologue
    .line 798
    new-instance v17, Lcom/google/android/mms/pdu/PduBody;

    invoke-direct/range {v17 .. v17}, Lcom/google/android/mms/pdu/PduBody;-><init>()V

    .line 800
    .local v17, pb:Lcom/google/android/mms/pdu/PduBody;
    const/4 v10, 0x0

    .line 801
    .local v10, hasForwardLock:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_f

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/mms/model/SlideModel;

    .line 802
    .local v19, slide:Lcom/android/mms/model/SlideModel;
    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/model/SlideModel;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_0

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/mms/model/MediaModel;

    .line 803
    .local v15, media:Lcom/android/mms/model/MediaModel;
    if-eqz p3, :cond_2

    .line 805
    :try_start_0
    invoke-virtual {v15}, Lcom/android/mms/model/MediaModel;->isDrmProtected()Z

    move-result v24

    if-eqz v24, :cond_2

    invoke-virtual {v15}, Lcom/android/mms/model/MediaModel;->isAllowedToForward()Z
    :try_end_0
    .catch Landroid/drm/mobile2/OMADRMException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v24

    if-nez v24, :cond_2

    .line 806
    const/4 v10, 0x1

    goto :goto_0

    .line 809
    :catch_0
    move-exception v24

    move-object/from16 v7, v24

    .line 811
    .local v7, e:Landroid/drm/mobile2/OMADRMException;
    invoke-virtual {v7}, Landroid/drm/mobile2/OMADRMException;->printStackTrace()V

    .line 818
    .end local v7           #e:Landroid/drm/mobile2/OMADRMException;
    :cond_2
    :goto_1
    new-instance v16, Lcom/google/android/mms/pdu/PduPart;

    invoke-direct/range {v16 .. v16}, Lcom/google/android/mms/pdu/PduPart;-><init>()V

    .line 820
    .local v16, part:Lcom/google/android/mms/pdu/PduPart;
    invoke-virtual {v15}, Lcom/android/mms/model/MediaModel;->isText()Z

    move-result v24

    if-eqz v24, :cond_3

    .line 821
    move-object v0, v15

    check-cast v0, Lcom/android/mms/model/TextModel;

    move-object/from16 v22, v0

    .line 825
    .local v22, text:Lcom/android/mms/model/TextModel;
    invoke-virtual/range {v22 .. v22}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_1

    invoke-virtual {v15}, Lcom/android/mms/model/MediaModel;->getContentType()Ljava/lang/String;

    move-result-object v24

    const-string v25, "text/x-vCalendar"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v24

    if-nez v24, :cond_1

    invoke-virtual {v15}, Lcom/android/mms/model/MediaModel;->getContentType()Ljava/lang/String;

    move-result-object v24

    const-string v25, "text/x-vCard"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v24

    if-nez v24, :cond_1

    invoke-virtual {v15}, Lcom/android/mms/model/MediaModel;->getContentType()Ljava/lang/String;

    move-result-object v24

    const-string v25, "text/x-vNote"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v24

    if-nez v24, :cond_1

    invoke-virtual {v15}, Lcom/android/mms/model/MediaModel;->getContentType()Ljava/lang/String;

    move-result-object v24

    const-string v25, "text/x-vtodo"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v24

    if-nez v24, :cond_1

    .line 837
    invoke-virtual/range {v22 .. v22}, Lcom/android/mms/model/TextModel;->getCharset()I

    move-result v24

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setCharset(I)V

    .line 840
    .end local v22           #text:Lcom/android/mms/model/TextModel;
    :cond_3
    invoke-virtual {v15}, Lcom/android/mms/model/MediaModel;->getSrc()Ljava/lang/String;

    move-result-object v20

    .line 841
    .local v20, src:Ljava/lang/String;
    invoke-virtual {v15}, Lcom/android/mms/model/MediaModel;->getContentType()Ljava/lang/String;

    move-result-object v5

    .line 842
    .local v5, contentType:Ljava/lang/String;
    const/16 v24, 0x2e

    move-object/from16 v0, v20

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    .line 843
    .local v6, dotPos:I
    const/4 v8, 0x0

    .line 844
    .local v8, extension:Ljava/lang/String;
    if-ltz v6, :cond_4

    .line 845
    add-int/lit8 v24, v6, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 847
    :cond_4
    const-string v24, "dcf"

    move-object/from16 v0, v24

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_6

    .line 848
    invoke-static {}, Lcom/android/mms/util/MessageMimeTypeMap;->getSingleton()Lcom/android/mms/util/MessageMimeTypeMap;

    move-result-object v24

    move-object/from16 v0, v24

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/mms/util/MessageMimeTypeMap;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 850
    .local v3, changeExtension:Ljava/lang/String;
    if-nez v3, :cond_5

    .line 851
    const-string v3, "dcf"

    .line 852
    :cond_5
    new-instance v24, Ljava/lang/StringBuffer;

    const/16 v25, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v25

    move v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v25, "."

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    move-object/from16 v0, v24

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    .line 853
    .local v9, fileName:Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v24

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setFilename([B)V

    .line 854
    const-string v5, "application/vnd.oma.drm.content"

    .line 858
    .end local v3           #changeExtension:Ljava/lang/String;
    .end local v9           #fileName:Ljava/lang/String;
    :cond_6
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v24

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentType([B)V

    .line 861
    const-string v24, "cid:"

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    .line 862
    .local v21, startWithContentId:Z
    if-eqz v21, :cond_7

    .line 863
    const-string v24, "cid:"

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v24

    move-object/from16 v0, v20

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    .line 868
    .local v14, location:Ljava/lang/String;
    :goto_2
    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v24

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentLocation([B)V

    .line 871
    if-eqz v21, :cond_8

    .line 873
    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v24

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentId([B)V

    .line 880
    :goto_3
    invoke-virtual {v15}, Lcom/android/mms/model/MediaModel;->isDrmProtected()Z

    move-result v24

    if-eqz v24, :cond_b

    .line 881
    invoke-virtual {v15}, Lcom/android/mms/model/MediaModel;->getDrmObject()Lcom/android/mms/drm/DrmWrapper;

    move-result-object v23

    .line 882
    .local v23, wrapper:Lcom/android/mms/drm/DrmWrapper;
    invoke-virtual/range {v23 .. v23}, Lcom/android/mms/drm/DrmWrapper;->getOriginalUri()Landroid/net/Uri;

    move-result-object v24

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setDataUri(Landroid/net/Uri;)V

    .line 883
    invoke-virtual/range {v23 .. v23}, Lcom/android/mms/drm/DrmWrapper;->getOriginalData()[B

    move-result-object v24

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setData([B)V

    .line 893
    .end local v15           #media:Lcom/android/mms/model/MediaModel;
    .end local v23           #wrapper:Lcom/android/mms/drm/DrmWrapper;
    :goto_4
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduBody;->addPart(Lcom/google/android/mms/pdu/PduPart;)Z

    goto/16 :goto_0

    .line 812
    .end local v5           #contentType:Ljava/lang/String;
    .end local v6           #dotPos:I
    .end local v8           #extension:Ljava/lang/String;
    .end local v14           #location:Ljava/lang/String;
    .end local v16           #part:Lcom/google/android/mms/pdu/PduPart;
    .end local v20           #src:Ljava/lang/String;
    .end local v21           #startWithContentId:Z
    .restart local v15       #media:Lcom/android/mms/model/MediaModel;
    :catch_1
    move-exception v24

    move-object/from16 v7, v24

    .line 814
    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    .line 865
    .end local v7           #e:Ljava/io/IOException;
    .restart local v5       #contentType:Ljava/lang/String;
    .restart local v6       #dotPos:I
    .restart local v8       #extension:Ljava/lang/String;
    .restart local v16       #part:Lcom/google/android/mms/pdu/PduPart;
    .restart local v20       #src:Ljava/lang/String;
    .restart local v21       #startWithContentId:Z
    :cond_7
    move-object/from16 v14, v20

    .restart local v14       #location:Ljava/lang/String;
    goto :goto_2

    .line 875
    :cond_8
    const/16 v24, 0x2e

    move-object v0, v14

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v13

    .line 876
    .local v13, index:I
    const/16 v24, -0x1

    move v0, v13

    move/from16 v1, v24

    if-eq v0, v1, :cond_9

    if-nez v13, :cond_a

    :cond_9
    move-object v4, v14

    .line 877
    .local v4, contentId:Ljava/lang/String;
    :goto_5
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v24

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentId([B)V

    goto :goto_3

    .line 876
    .end local v4           #contentId:Ljava/lang/String;
    :cond_a
    const/16 v24, 0x0

    move-object v0, v14

    move/from16 v1, v24

    move v2, v13

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v4, v24

    goto :goto_5

    .line 884
    .end local v13           #index:I
    :cond_b
    invoke-virtual {v15}, Lcom/android/mms/model/MediaModel;->isText()Z

    move-result v24

    if-eqz v24, :cond_c

    .line 885
    check-cast v15, Lcom/android/mms/model/TextModel;

    .end local v15           #media:Lcom/android/mms/model/MediaModel;
    invoke-virtual {v15}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->getBytes()[B

    move-result-object v24

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setData([B)V

    goto :goto_4

    .line 886
    .restart local v15       #media:Lcom/android/mms/model/MediaModel;
    :cond_c
    invoke-virtual {v15}, Lcom/android/mms/model/MediaModel;->isImage()Z

    move-result v24

    if-nez v24, :cond_d

    invoke-virtual {v15}, Lcom/android/mms/model/MediaModel;->isVideo()Z

    move-result v24

    if-nez v24, :cond_d

    invoke-virtual {v15}, Lcom/android/mms/model/MediaModel;->isAudio()Z

    move-result v24

    if-eqz v24, :cond_e

    .line 887
    :cond_d
    invoke-virtual {v15}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v24

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setDataUri(Landroid/net/Uri;)V

    goto :goto_4

    .line 889
    :cond_e
    new-instance v18, Ljava/lang/StringBuffer;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuffer;-><init>()V

    .line 890
    .local v18, s:Ljava/lang/StringBuffer;
    const-string v24, "Mms/slideshow"

    const-string v25, "Unsupport media: "

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v25

    move-object/from16 v0, v25

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 897
    .end local v5           #contentType:Ljava/lang/String;
    .end local v6           #dotPos:I
    .end local v8           #extension:Ljava/lang/String;
    .end local v12           #i$:Ljava/util/Iterator;
    .end local v14           #location:Ljava/lang/String;
    .end local v15           #media:Lcom/android/mms/model/MediaModel;
    .end local v16           #part:Lcom/google/android/mms/pdu/PduPart;
    .end local v18           #s:Ljava/lang/StringBuffer;
    .end local v19           #slide:Lcom/android/mms/model/SlideModel;
    .end local v20           #src:Ljava/lang/String;
    .end local v21           #startWithContentId:Z
    :cond_f
    if-eqz v10, :cond_10

    if-eqz p3, :cond_10

    if-eqz p1, :cond_10

    .line 898
    const v24, 0x7f090051

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/widget/Toast;->show()V

    .line 900
    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/mms/model/SmilHelper;->getDocument(Lcom/google/android/mms/pdu/PduBody;Landroid/content/Context;)Lorg/w3c/dom/smil/SMILDocument;

    move-result-object p2

    .line 903
    :cond_10
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/mms/model/SlideshowModel;->makeVItemPart(Lcom/google/android/mms/pdu/PduBody;)V

    .line 905
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/android/mms/model/SlideshowModel;->makeSmilPart(Lorg/w3c/dom/smil/SMILDocument;Lcom/google/android/mms/pdu/PduBody;)V

    .line 907
    return-object v17
.end method

.method private makePduBody(Lorg/w3c/dom/smil/SMILDocument;)Lcom/google/android/mms/pdu/PduBody;
    .locals 2
    .parameter "document"

    .prologue
    .line 794
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/android/mms/model/SlideshowModel;->makePduBody(Landroid/content/Context;Lorg/w3c/dom/smil/SMILDocument;Z)Lcom/google/android/mms/pdu/PduBody;

    move-result-object v0

    return-object v0
.end method

.method private static makeRegionModelList(Lorg/w3c/dom/smil/SMILLayoutElement;Ljava/util/ArrayList;)I
    .locals 13
    .parameter "sle"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/smil/SMILLayoutElement;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/model/RegionModel;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 314
    .local p1, regions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/RegionModel;>;"
    invoke-interface {p0}, Lorg/w3c/dom/smil/SMILLayoutElement;->getRegions()Lorg/w3c/dom/NodeList;

    move-result-object v9

    .line 315
    .local v9, nlRegions:Lorg/w3c/dom/NodeList;
    invoke-interface {v9}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v10

    .line 317
    .local v10, regionsNum:I
    const/4 v12, 0x0

    .line 320
    .local v12, sumOfRegionHeight:I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    if-ge v8, v10, :cond_0

    .line 321
    invoke-interface {v9, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v11

    check-cast v11, Lorg/w3c/dom/smil/SMILRegionElement;

    .line 322
    .local v11, sre:Lorg/w3c/dom/smil/SMILRegionElement;
    new-instance v0, Lcom/android/mms/model/RegionModel;

    invoke-interface {v11}, Lorg/w3c/dom/smil/SMILRegionElement;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v11}, Lorg/w3c/dom/smil/SMILRegionElement;->getFit()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v11}, Lorg/w3c/dom/smil/SMILRegionElement;->getLeft()I

    move-result v3

    invoke-interface {v11}, Lorg/w3c/dom/smil/SMILRegionElement;->getTop()I

    move-result v4

    invoke-interface {v11}, Lorg/w3c/dom/smil/SMILRegionElement;->getWidth()I

    move-result v5

    invoke-interface {v11}, Lorg/w3c/dom/smil/SMILRegionElement;->getHeight()I

    move-result v6

    invoke-interface {v11}, Lorg/w3c/dom/smil/SMILRegionElement;->getBackgroundColor()Ljava/lang/String;

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Lcom/android/mms/model/RegionModel;-><init>(Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;)V

    .line 325
    .local v0, r:Lcom/android/mms/model/RegionModel;
    invoke-interface {v11}, Lorg/w3c/dom/smil/SMILRegionElement;->getHeight()I

    move-result v1

    add-int/2addr v12, v1

    .line 329
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 320
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 331
    .end local v0           #r:Lcom/android/mms/model/RegionModel;
    .end local v11           #sre:Lorg/w3c/dom/smil/SMILRegionElement;
    :cond_0
    return v12
.end method

.method private makeSmilPart(Lorg/w3c/dom/smil/SMILDocument;Lcom/google/android/mms/pdu/PduBody;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const-string v3, "Mms/slideshow"

    .line 938
    const/4 v0, 0x0

    .line 940
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 941
    :try_start_1
    invoke-static {p1, v1}, Lcom/android/mms/dom/smil/parser/SmilXmlSerializer;->serialize(Lorg/w3c/dom/smil/SMILDocument;Ljava/io/OutputStream;)V

    .line 942
    new-instance v0, Lcom/google/android/mms/pdu/PduPart;

    invoke-direct {v0}, Lcom/google/android/mms/pdu/PduPart;-><init>()V

    .line 943
    const-string v2, "smil"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/mms/pdu/PduPart;->setContentId([B)V

    .line 944
    const-string v2, "smil.xml"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/mms/pdu/PduPart;->setContentLocation([B)V

    .line 945
    const-string v2, "application/smil"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/mms/pdu/PduPart;->setContentType([B)V

    .line 946
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/mms/pdu/PduPart;->setData([B)V

    .line 949
    invoke-virtual {p2, v0}, Lcom/google/android/mms/pdu/PduBody;->addPart(Lcom/google/android/mms/pdu/PduPart;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 951
    if-eqz v1, :cond_0

    .line 953
    :try_start_2
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 959
    :cond_0
    :goto_0
    return-void

    .line 954
    :catch_0
    move-exception v0

    .line 955
    const-string v1, "Mms/slideshow"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 951
    :catchall_0
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_1
    if-eqz v1, :cond_1

    .line 953
    :try_start_3
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 956
    :cond_1
    :goto_2
    throw v0

    .line 954
    :catch_1
    move-exception v1

    .line 955
    const-string v2, "Mms/slideshow"

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 951
    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method private makeVItemPart(Lcom/google/android/mms/pdu/PduBody;)V
    .locals 9
    .parameter "pb"

    .prologue
    const-string v8, "_"

    .line 912
    const/4 v4, 0x0

    .local v4, j:I
    :goto_0
    iget-object v6, p0, Lcom/android/mms/model/SlideshowModel;->mRawAttachments:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v4, v6, :cond_4

    .line 913
    iget-object v6, p0, Lcom/android/mms/model/SlideshowModel;->mRawAttachments:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/model/AttachmentModel;

    .line 914
    .local v1, attachment:Lcom/android/mms/model/AttachmentModel;
    new-instance v0, Lcom/google/android/mms/pdu/PduPart;

    invoke-direct {v0}, Lcom/google/android/mms/pdu/PduPart;-><init>()V

    .line 915
    .local v0, attachPart:Lcom/google/android/mms/pdu/PduPart;
    invoke-virtual {v1}, Lcom/android/mms/model/AttachmentModel;->getSrc()Ljava/lang/String;

    move-result-object v5

    .line 916
    .local v5, src:Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    iget-object v6, p0, Lcom/android/mms/model/SlideshowModel;->mRawAttachments:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v2, v6, :cond_2

    .line 917
    if-eq v2, v4, :cond_0

    iget-object v6, p0, Lcom/android/mms/model/SlideshowModel;->mRawAttachments:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/mms/model/AttachmentModel;

    invoke-virtual {v6}, Lcom/android/mms/model/AttachmentModel;->getSrc()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 918
    const/16 v6, 0x2e

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 919
    .local v3, index:I
    const/4 v6, -0x1

    if-eq v3, v6, :cond_1

    .line 920
    new-instance v6, Ljava/lang/StringBuffer;

    const/4 v7, 0x0

    invoke-virtual {v5, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v7, "_"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v5, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    .line 916
    .end local v3           #index:I
    :cond_0
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 922
    .restart local v3       #index:I
    :cond_1
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v7, "_"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    .line 925
    .end local v3           #index:I
    :cond_2
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/google/android/mms/pdu/PduPart;->setContentId([B)V

    .line 926
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/google/android/mms/pdu/PduPart;->setContentLocation([B)V

    .line 927
    iget-object v6, v1, Lcom/android/mms/model/AttachmentModel;->mContentType:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/google/android/mms/pdu/PduPart;->setContentType([B)V

    .line 928
    invoke-virtual {v1}, Lcom/android/mms/model/AttachmentModel;->getData()[B

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/google/android/mms/pdu/PduPart;->setData([B)V

    .line 929
    invoke-virtual {v1}, Lcom/android/mms/model/AttachmentModel;->getUri()Landroid/net/Uri;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 930
    invoke-virtual {v1}, Lcom/android/mms/model/AttachmentModel;->getUri()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/google/android/mms/pdu/PduPart;->setDataUri(Landroid/net/Uri;)V

    .line 931
    :cond_3
    invoke-virtual {p1, v0}, Lcom/google/android/mms/pdu/PduBody;->addPart(Lcom/google/android/mms/pdu/PduPart;)Z

    .line 912
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 933
    .end local v0           #attachPart:Lcom/google/android/mms/pdu/PduPart;
    .end local v1           #attachment:Lcom/android/mms/model/AttachmentModel;
    .end local v2           #i:I
    .end local v5           #src:Ljava/lang/String;
    :cond_4
    return-void
.end method

.method private registerObserver(Lcom/android/mms/model/Model;)V
    .locals 3
    .parameter "object"

    .prologue
    .line 1353
    invoke-virtual {p1, p0}, Lcom/android/mms/model/Model;->registerModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    .line 1354
    iget-object v2, p0, Lcom/android/mms/model/Model;->mModelChangedObservers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/model/IModelChangedObserver;

    .line 1355
    .local v1, observer:Lcom/android/mms/model/IModelChangedObserver;
    invoke-virtual {p1, v1}, Lcom/android/mms/model/Model;->registerModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    goto :goto_0

    .line 1357
    .end local v1           #observer:Lcom/android/mms/model/IModelChangedObserver;
    :cond_0
    return-void
.end method

.method public static setAddAttachmentSlide(Z)V
    .locals 0
    .parameter "addSlide"

    .prologue
    .line 755
    sput-boolean p0, Lcom/android/mms/model/SlideshowModel;->mRawAttachmentAddSlide:Z

    .line 756
    return-void
.end method

.method public static setAddAttachmentSlideForCompose(Z)V
    .locals 0
    .parameter "addSlide"

    .prologue
    .line 781
    sput-boolean p0, Lcom/android/mms/model/SlideshowModel;->mRawAttachmentAddSlideforCompose:Z

    .line 782
    return-void
.end method

.method public static setCheckMessageSizeforSlide(Z)V
    .locals 0
    .parameter "checkSize"

    .prologue
    .line 760
    sput-boolean p0, Lcom/android/mms/model/SlideshowModel;->mCheckMessageSize:Z

    .line 761
    return-void
.end method


# virtual methods
.method public add(ILcom/android/mms/model/SlideModel;)V
    .locals 2
    .parameter "location"
    .parameter "object"

    .prologue
    .line 1121
    if-eqz p2, :cond_0

    .line 1122
    invoke-virtual {p2}, Lcom/android/mms/model/SlideModel;->getSlideSize()I

    move-result v0

    .line 1123
    .local v0, increaseSize:I
    invoke-virtual {p0, v0}, Lcom/android/mms/model/SlideshowModel;->checkMessageSize(I)V

    .line 1125
    iget-object v1, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v1, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1126
    invoke-virtual {p0, v0}, Lcom/android/mms/model/SlideshowModel;->increaseMessageSize(I)V

    .line 1127
    invoke-direct {p0, p2}, Lcom/android/mms/model/SlideshowModel;->registerObserver(Lcom/android/mms/model/Model;)V

    .line 1128
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/mms/model/SlideshowModel;->notifyModelChanged(Z)V

    .line 1130
    .end local v0           #increaseSize:I
    :cond_0
    return-void
.end method

.method public bridge synthetic add(ILjava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    check-cast p2, Lcom/android/mms/model/SlideModel;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/mms/model/SlideshowModel;->add(ILcom/android/mms/model/SlideModel;)V

    return-void
.end method

.method public add(Lcom/android/mms/model/SlideModel;)Z
    .locals 3
    .parameter "object"

    .prologue
    const/4 v2, 0x1

    .line 1041
    if-eqz p1, :cond_0

    .line 1042
    invoke-virtual {p1}, Lcom/android/mms/model/SlideModel;->getSlideSize()I

    move-result v0

    .line 1043
    .local v0, increaseSize:I
    invoke-virtual {p0, v0}, Lcom/android/mms/model/SlideshowModel;->checkMessageSize(I)V

    .line 1045
    iget-object v1, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1046
    invoke-virtual {p0, v0}, Lcom/android/mms/model/SlideshowModel;->increaseMessageSize(I)V

    .line 1047
    invoke-direct {p0, p1}, Lcom/android/mms/model/SlideshowModel;->registerObserver(Lcom/android/mms/model/Model;)V

    .line 1048
    invoke-virtual {p0, v2}, Lcom/android/mms/model/SlideshowModel;->notifyModelChanged(Z)V

    move v1, v2

    .line 1052
    .end local v0           #increaseSize:I
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    check-cast p1, Lcom/android/mms/model/SlideModel;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/mms/model/SlideshowModel;->add(Lcom/android/mms/model/SlideModel;)Z

    move-result v0

    return v0
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<+",
            "Lcom/android/mms/model/SlideModel;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1133
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lcom/android/mms/model/SlideModel;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1056
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addAttachment(ILcom/android/mms/model/AttachmentModel;)V
    .locals 2
    .parameter "location"
    .parameter "object"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/mms/ContentRestrictionException;
        }
    .end annotation

    .prologue
    .line 1341
    if-eqz p2, :cond_0

    .line 1342
    invoke-virtual {p2}, Lcom/android/mms/model/AttachmentModel;->getMediaSize()I

    move-result v0

    .line 1344
    .local v0, increaseSize:I
    invoke-virtual {p0, v0}, Lcom/android/mms/model/SlideshowModel;->checkMessageSize(I)V

    .line 1345
    iget-object v1, p0, Lcom/android/mms/model/SlideshowModel;->mRawAttachments:Ljava/util/ArrayList;

    invoke-virtual {v1, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1346
    invoke-virtual {p0, v0}, Lcom/android/mms/model/SlideshowModel;->increaseMessageSize(I)V

    .line 1347
    invoke-direct {p0, p2}, Lcom/android/mms/model/SlideshowModel;->registerObserver(Lcom/android/mms/model/Model;)V

    .line 1348
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/mms/model/SlideshowModel;->notifyModelChanged(Z)V

    .line 1350
    .end local v0           #increaseSize:I
    :cond_0
    return-void
.end method

.method public addAttachment(Lcom/android/mms/model/AttachmentModel;)V
    .locals 1
    .parameter "object"

    .prologue
    .line 1336
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mRawAttachments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/mms/model/SlideshowModel;->addAttachment(ILcom/android/mms/model/AttachmentModel;)V

    .line 1337
    return-void
.end method

.method public checkMessageSize(I)V
    .locals 3
    .parameter "increaseSize"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/mms/ContentRestrictionException;
        }
    .end annotation

    .prologue
    .line 1269
    invoke-static {}, Lcom/android/mms/model/SlideshowModel;->getCheckMessageSizeforSlide()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1275
    :goto_0
    return-void

    .line 1273
    :cond_0
    invoke-static {}, Lcom/android/mms/model/ContentRestrictionFactory;->getContentRestriction()Lcom/android/mms/model/ContentRestriction;

    move-result-object v0

    .line 1274
    .local v0, cr:Lcom/android/mms/model/ContentRestriction;
    iget v1, p0, Lcom/android/mms/model/SlideshowModel;->mCurrentMessageSize:I

    iget-object v2, p0, Lcom/android/mms/model/SlideshowModel;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-interface {v0, v1, p1, v2}, Lcom/android/mms/model/ContentRestriction;->checkMessageSize(IILandroid/content/ContentResolver;)V

    goto :goto_0
.end method

.method public clear()V
    .locals 5

    .prologue
    .line 1060
    invoke-virtual {p0}, Lcom/android/mms/model/SlideshowModel;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 1061
    iget-object v4, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/model/SlideModel;

    .line 1062
    .local v3, slide:Lcom/android/mms/model/SlideModel;
    invoke-virtual {v3, p0}, Lcom/android/mms/model/SlideModel;->unregisterModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    .line 1063
    iget-object v4, p0, Lcom/android/mms/model/Model;->mModelChangedObservers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/model/IModelChangedObserver;

    .line 1064
    .local v2, observer:Lcom/android/mms/model/IModelChangedObserver;
    invoke-virtual {v3, v2}, Lcom/android/mms/model/SlideModel;->unregisterModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    goto :goto_0

    .line 1067
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #observer:Lcom/android/mms/model/IModelChangedObserver;
    .end local v3           #slide:Lcom/android/mms/model/SlideModel;
    :cond_1
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/mms/model/SlideshowModel;->mCurrentMessageSize:I

    .line 1068
    iget-object v4, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 1069
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/android/mms/model/SlideshowModel;->notifyModelChanged(Z)V

    .line 1071
    :cond_2
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .parameter "object"

    .prologue
    .line 1074
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 1078
    .local p1, collection:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public decreaseMessageSize(I)V
    .locals 1
    .parameter "decreaseSize"

    .prologue
    .line 1020
    if-lez p1, :cond_0

    .line 1021
    iget v0, p0, Lcom/android/mms/model/SlideshowModel;->mCurrentMessageSize:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/android/mms/model/SlideshowModel;->mCurrentMessageSize:I

    .line 1023
    :cond_0
    return-void
.end method

.method public get(I)Lcom/android/mms/model/SlideModel;
    .locals 2
    .parameter "location"

    .prologue
    .line 1137
    invoke-virtual {p0}, Lcom/android/mms/model/SlideshowModel;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1139
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 1140
    :cond_0
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/mms/model/SlideModel;

    move-object v0, p0

    .line 1145
    :goto_0
    return-object v0

    .line 1142
    .restart local p0
    :cond_1
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/mms/model/SlideModel;

    move-object v0, p0

    goto :goto_0

    .line 1145
    .restart local p0
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    invoke-virtual {p0, p1}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v0

    return-object v0
.end method

.method public getAttachmentList()Ljava/lang/String;
    .locals 6

    .prologue
    const-string v5, ".vcf"

    .line 1384
    const-string v0, ""

    .line 1385
    iget-object v1, p0, Lcom/android/mms/model/SlideshowModel;->mRawAttachments:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1386
    iget-object v1, p0, Lcom/android/mms/model/SlideshowModel;->mRawAttachments:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/mms/model/AttachmentModel;

    .line 1387
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1388
    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1390
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/model/AttachmentModel;->getSrc()Ljava/lang/String;

    move-result-object v2

    .line 1391
    invoke-virtual {p0}, Lcom/android/mms/model/AttachmentModel;->getContentType()Ljava/lang/String;

    move-result-object v3

    .line 1392
    if-eqz v3, :cond_1

    .line 1393
    const-string v4, "text/x-vCard"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, ".vcf"

    invoke-virtual {v2, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1394
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".vcf"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1398
    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1401
    :cond_2
    return-object v0
.end method

.method public getCurrentMessageSize()I
    .locals 1

    .prologue
    .line 1010
    iget v0, p0, Lcom/android/mms/model/SlideshowModel;->mCurrentMessageSize:I

    return v0
.end method

.method public getLayout()Lcom/android/mms/model/LayoutModel;
    .locals 1

    .prologue
    .line 1034
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mLayout:Lcom/android/mms/model/LayoutModel;

    return-object v0
.end method

.method public getRawAttachmentsList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/model/AttachmentModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1418
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mRawAttachments:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getRawAttachmentsSize()I
    .locals 1

    .prologue
    .line 1414
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mRawAttachments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getRemainContentsSize()I
    .locals 2

    .prologue
    .line 1030
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxContentsSize()I

    move-result v0

    iget v1, p0, Lcom/android/mms/model/SlideshowModel;->mCurrentMessageSize:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getSlides()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/model/SlideModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1424
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    return-object v0
.end method

.method public increaseMessageSize(I)V
    .locals 1
    .parameter "increaseSize"

    .prologue
    .line 1014
    if-lez p1, :cond_0

    .line 1015
    iget v0, p0, Lcom/android/mms/model/SlideshowModel;->mCurrentMessageSize:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/mms/model/SlideshowModel;->mCurrentMessageSize:I

    .line 1017
    :cond_0
    return-void
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 1
    .parameter "object"

    .prologue
    .line 1150
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isDrmContentsPresent()Z
    .locals 1

    .prologue
    .line 1410
    sget-boolean v0, Lcom/android/mms/model/SlideshowModel;->mIsDrmContentsPresent:Z

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 1082
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isRawAttachmentPresent()Z
    .locals 1

    .prologue
    .line 1405
    sget-boolean v0, Lcom/android/mms/model/SlideshowModel;->mIsRawAttachmentsPresent:Z

    return v0
.end method

.method public isSimple()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1284
    invoke-virtual {p0}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v1

    if-eq v1, v4, :cond_0

    move v1, v3

    .line 1304
    :goto_0
    return v1

    .line 1287
    :cond_0
    invoke-virtual {p0, v3}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v0

    .line 1289
    .local v0, slide:Lcom/android/mms/model/SlideModel;
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v1

    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v2

    xor-int/2addr v1, v2

    if-nez v1, :cond_2

    .line 1290
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->isCanAddVideo()Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v3

    .line 1291
    goto :goto_0

    :cond_1
    move v1, v4

    .line 1293
    goto :goto_0

    .line 1296
    :cond_2
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1298
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->isCanAddVideo()Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v3

    .line 1299
    goto :goto_0

    :cond_3
    move v1, v4

    .line 1301
    goto :goto_0

    :cond_4
    move v1, v4

    .line 1304
    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/android/mms/model/SlideModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1086
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 1
    .parameter "object"

    .prologue
    .line 1154
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public listIterator()Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator",
            "<",
            "Lcom/android/mms/model/SlideModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1158
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 1
    .parameter "location"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator",
            "<",
            "Lcom/android/mms/model/SlideModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1162
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public makeCopy(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduBody;
    .locals 2
    .parameter "context"

    .prologue
    .line 962
    invoke-static {p0}, Lcom/android/mms/model/SmilHelper;->getDocument(Lcom/android/mms/model/SlideshowModel;)Lorg/w3c/dom/smil/SMILDocument;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/mms/model/SlideshowModel;->makePduBody(Landroid/content/Context;Lorg/w3c/dom/smil/SMILDocument;Z)Lcom/google/android/mms/pdu/PduBody;

    move-result-object v0

    return-object v0
.end method

.method public onModelChanged(Lcom/android/mms/model/Model;Z)V
    .locals 1
    .parameter "model"
    .parameter "dataChanged"

    .prologue
    const/4 v0, 0x0

    .line 1236
    if-eqz p2, :cond_0

    .line 1237
    iput-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mDocumentCache:Lorg/w3c/dom/smil/SMILDocument;

    .line 1238
    iput-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mPduBodyCache:Lcom/google/android/mms/pdu/PduBody;

    .line 1240
    :cond_0
    return-void
.end method

.method public prepareForSend()V
    .locals 3

    .prologue
    .line 1326
    invoke-virtual {p0}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1327
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v0

    .line 1328
    .local v0, text:Lcom/android/mms/model/TextModel;
    if-eqz v0, :cond_0

    .line 1329
    invoke-virtual {v0}, Lcom/android/mms/model/TextModel;->cloneText()V

    .line 1332
    .end local v0           #text:Lcom/android/mms/model/TextModel;
    :cond_0
    return-void
.end method

.method protected registerModelChangedObserverInDescendants(Lcom/android/mms/model/IModelChangedObserver;)V
    .locals 3
    .parameter "observer"

    .prologue
    .line 1210
    iget-object v2, p0, Lcom/android/mms/model/SlideshowModel;->mLayout:Lcom/android/mms/model/LayoutModel;

    invoke-virtual {v2, p1}, Lcom/android/mms/model/LayoutModel;->registerModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    .line 1212
    iget-object v2, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/model/SlideModel;

    .line 1213
    .local v1, slide:Lcom/android/mms/model/SlideModel;
    invoke-virtual {v1, p1}, Lcom/android/mms/model/SlideModel;->registerModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    goto :goto_0

    .line 1215
    .end local v1           #slide:Lcom/android/mms/model/SlideModel;
    :cond_0
    return-void
.end method

.method public remove(I)Lcom/android/mms/model/SlideModel;
    .locals 2
    .parameter "location"

    .prologue
    .line 1166
    iget-object v1, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/model/SlideModel;

    .line 1167
    .local v0, slide:Lcom/android/mms/model/SlideModel;
    if-eqz v0, :cond_0

    .line 1168
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->getSlideSize()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/mms/model/SlideshowModel;->decreaseMessageSize(I)V

    .line 1169
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->unregisterAllModelChangedObservers()V

    .line 1170
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/mms/model/SlideshowModel;->notifyModelChanged(Z)V

    .line 1172
    :cond_0
    return-object v0
.end method

.method public bridge synthetic remove(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    invoke-virtual {p0, p1}, Lcom/android/mms/model/SlideshowModel;->remove(I)Lcom/android/mms/model/SlideModel;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 4
    .parameter "object"

    .prologue
    const/4 v3, 0x1

    .line 1090
    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1091
    move-object v0, p1

    check-cast v0, Lcom/android/mms/model/SlideModel;

    move-object v1, v0

    .line 1092
    .local v1, slide:Lcom/android/mms/model/SlideModel;
    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->getSlideSize()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/mms/model/SlideshowModel;->decreaseMessageSize(I)V

    .line 1093
    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->unregisterAllModelChangedObservers()V

    .line 1094
    invoke-virtual {p0, v3}, Lcom/android/mms/model/SlideshowModel;->notifyModelChanged(Z)V

    move v2, v3

    .line 1097
    .end local v1           #slide:Lcom/android/mms/model/SlideModel;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 1101
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeAttachment(Ljava/lang/Object;)Z
    .locals 4
    .parameter "object"

    .prologue
    const/4 v3, 0x1

    .line 1360
    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/android/mms/model/SlideshowModel;->mRawAttachments:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1361
    move-object v0, p1

    check-cast v0, Lcom/android/mms/model/AttachmentModel;

    move-object v1, v0

    .line 1362
    .local v1, attach:Lcom/android/mms/model/AttachmentModel;
    iget v2, v1, Lcom/android/mms/model/AttachmentModel;->mSize:I

    invoke-virtual {p0, v2}, Lcom/android/mms/model/SlideshowModel;->decreaseMessageSize(I)V

    .line 1363
    invoke-virtual {v1}, Lcom/android/mms/model/AttachmentModel;->unregisterAllModelChangedObservers()V

    .line 1364
    invoke-virtual {p0, v3}, Lcom/android/mms/model/SlideshowModel;->notifyModelChanged(Z)V

    move v2, v3

    .line 1367
    .end local v1           #attach:Lcom/android/mms/model/AttachmentModel;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public removeAttachment(Ljava/lang/Object;I)Z
    .locals 4
    .parameter "object"
    .parameter "position"

    .prologue
    const/4 v3, 0x1

    .line 1372
    if-eqz p1, :cond_0

    if-ltz p2, :cond_0

    iget-object v2, p0, Lcom/android/mms/model/SlideshowModel;->mRawAttachments:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p2, v2, :cond_0

    .line 1373
    iget-object v2, p0, Lcom/android/mms/model/SlideshowModel;->mRawAttachments:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1374
    move-object v0, p1

    check-cast v0, Lcom/android/mms/model/AttachmentModel;

    move-object v1, v0

    .line 1375
    .local v1, attach:Lcom/android/mms/model/AttachmentModel;
    iget v2, v1, Lcom/android/mms/model/AttachmentModel;->mSize:I

    invoke-virtual {p0, v2}, Lcom/android/mms/model/SlideshowModel;->decreaseMessageSize(I)V

    .line 1376
    invoke-virtual {v1}, Lcom/android/mms/model/AttachmentModel;->unregisterAllModelChangedObservers()V

    .line 1377
    invoke-virtual {p0, v3}, Lcom/android/mms/model/SlideshowModel;->notifyModelChanged(Z)V

    move v2, v3

    .line 1380
    .end local v1           #attach:Lcom/android/mms/model/AttachmentModel;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 1105
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public set(ILcom/android/mms/model/SlideModel;)Lcom/android/mms/model/SlideModel;
    .locals 4
    .parameter "location"
    .parameter "object"

    .prologue
    .line 1176
    iget-object v3, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/model/SlideModel;

    .line 1177
    .local v2, slide:Lcom/android/mms/model/SlideModel;
    if-eqz p2, :cond_1

    .line 1178
    const/4 v1, 0x0

    .line 1179
    .local v1, removeSize:I
    invoke-virtual {p2}, Lcom/android/mms/model/SlideModel;->getSlideSize()I

    move-result v0

    .line 1180
    .local v0, addSize:I
    if-eqz v2, :cond_0

    .line 1181
    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->getSlideSize()I

    move-result v1

    .line 1183
    :cond_0
    if-le v0, v1, :cond_4

    .line 1184
    sub-int v3, v0, v1

    invoke-virtual {p0, v3}, Lcom/android/mms/model/SlideshowModel;->checkMessageSize(I)V

    .line 1185
    sub-int v3, v0, v1

    invoke-virtual {p0, v3}, Lcom/android/mms/model/SlideshowModel;->increaseMessageSize(I)V

    .line 1191
    .end local v0           #addSize:I
    .end local v1           #removeSize:I
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v3, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #slide:Lcom/android/mms/model/SlideModel;
    check-cast v2, Lcom/android/mms/model/SlideModel;

    .line 1192
    .restart local v2       #slide:Lcom/android/mms/model/SlideModel;
    if-eqz v2, :cond_2

    .line 1193
    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->unregisterAllModelChangedObservers()V

    .line 1196
    :cond_2
    if-eqz p2, :cond_3

    .line 1197
    invoke-direct {p0, p2}, Lcom/android/mms/model/SlideshowModel;->registerObserver(Lcom/android/mms/model/Model;)V

    .line 1200
    :cond_3
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/mms/model/SlideshowModel;->notifyModelChanged(Z)V

    .line 1201
    return-object v2

    .line 1187
    .restart local v0       #addSize:I
    .restart local v1       #removeSize:I
    :cond_4
    sub-int v3, v1, v0

    invoke-virtual {p0, v3}, Lcom/android/mms/model/SlideshowModel;->decreaseMessageSize(I)V

    goto :goto_0
.end method

.method public bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    check-cast p2, Lcom/android/mms/model/SlideModel;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/mms/model/SlideshowModel;->set(ILcom/android/mms/model/SlideModel;)Lcom/android/mms/model/SlideModel;

    move-result-object v0

    return-object v0
.end method

.method public setCurrentMessageSize(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 1006
    iput p1, p0, Lcom/android/mms/model/SlideshowModel;->mCurrentMessageSize:I

    .line 1007
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 1109
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public subList(II)Ljava/util/List;
    .locals 1
    .parameter "start"
    .parameter "end"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Lcom/android/mms/model/SlideModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1205
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public sync(Lcom/google/android/mms/pdu/PduBody;)V
    .locals 6
    .parameter

    .prologue
    .line 1243
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/mms/model/SlideModel;

    .line 1244
    invoke-virtual {p0}, Lcom/android/mms/model/SlideModel;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/model/MediaModel;

    .line 1245
    invoke-virtual {v0}, Lcom/android/mms/model/MediaModel;->getSrc()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/google/android/mms/pdu/PduBody;->getPartByContentLocation(Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v3

    .line 1246
    if-eqz v3, :cond_3

    .line 1247
    invoke-virtual {v3}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v4

    .line 1248
    if-nez v4, :cond_2

    .line 1249
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Content-Type of the part may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1250
    :cond_2
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v4}, Ljava/lang/String;-><init>([B)V

    .line 1251
    invoke-static {v5}, Lcom/google/android/mms/ContentType;->isDrmType(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1252
    invoke-virtual {v3}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/mms/model/MediaModel;->setUri(Landroid/net/Uri;)V

    goto :goto_0

    .line 1254
    :cond_3
    iget-object v0, p0, Lcom/android/mms/model/SlideModel;->mParent:Lcom/android/mms/model/SlideshowModel;

    iget-object v0, v0, Lcom/android/mms/model/SlideshowModel;->mRawAttachments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 1255
    iget-object v0, p0, Lcom/android/mms/model/SlideModel;->mParent:Lcom/android/mms/model/SlideshowModel;

    iget-object v0, v0, Lcom/android/mms/model/SlideshowModel;->mRawAttachments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/model/AttachmentModel;

    .line 1256
    invoke-virtual {v0}, Lcom/android/mms/model/AttachmentModel;->getSrc()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/google/android/mms/pdu/PduBody;->getPartByContentLocation(Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v4

    .line 1257
    if-eqz v4, :cond_4

    .line 1258
    invoke-virtual {v4}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/mms/model/AttachmentModel;->setUri(Landroid/net/Uri;)V

    goto :goto_1

    .line 1265
    :cond_5
    return-void
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1113
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 1117
    .local p1, array:[Ljava/lang/Object;,"[TT;"
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toPduBody()Lcom/google/android/mms/pdu/PduBody;
    .locals 1

    .prologue
    .line 786
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mPduBodyCache:Lcom/google/android/mms/pdu/PduBody;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mRawAttachments:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 787
    :cond_0
    invoke-static {p0}, Lcom/android/mms/model/SmilHelper;->getDocument(Lcom/android/mms/model/SlideshowModel;)Lorg/w3c/dom/smil/SMILDocument;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mDocumentCache:Lorg/w3c/dom/smil/SMILDocument;

    .line 788
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mDocumentCache:Lorg/w3c/dom/smil/SMILDocument;

    invoke-direct {p0, v0}, Lcom/android/mms/model/SlideshowModel;->makePduBody(Lorg/w3c/dom/smil/SMILDocument;)Lcom/google/android/mms/pdu/PduBody;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mPduBodyCache:Lcom/google/android/mms/pdu/PduBody;

    .line 790
    :cond_1
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mPduBodyCache:Lcom/google/android/mms/pdu/PduBody;

    return-object v0
.end method

.method protected unregisterAllModelChangedObserversInDescendants()V
    .locals 3

    .prologue
    .line 1228
    iget-object v2, p0, Lcom/android/mms/model/SlideshowModel;->mLayout:Lcom/android/mms/model/LayoutModel;

    invoke-virtual {v2}, Lcom/android/mms/model/LayoutModel;->unregisterAllModelChangedObservers()V

    .line 1230
    iget-object v2, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/model/SlideModel;

    .line 1231
    .local v1, slide:Lcom/android/mms/model/SlideModel;
    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->unregisterAllModelChangedObservers()V

    goto :goto_0

    .line 1233
    .end local v1           #slide:Lcom/android/mms/model/SlideModel;
    :cond_0
    return-void
.end method

.method protected unregisterModelChangedObserverInDescendants(Lcom/android/mms/model/IModelChangedObserver;)V
    .locals 3
    .parameter "observer"

    .prologue
    .line 1219
    iget-object v2, p0, Lcom/android/mms/model/SlideshowModel;->mLayout:Lcom/android/mms/model/LayoutModel;

    invoke-virtual {v2, p1}, Lcom/android/mms/model/LayoutModel;->unregisterModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    .line 1221
    iget-object v2, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/model/SlideModel;

    .line 1222
    .local v1, slide:Lcom/android/mms/model/SlideModel;
    invoke-virtual {v1, p1}, Lcom/android/mms/model/SlideModel;->unregisterModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    goto :goto_0

    .line 1224
    .end local v1           #slide:Lcom/android/mms/model/SlideModel;
    :cond_0
    return-void
.end method
