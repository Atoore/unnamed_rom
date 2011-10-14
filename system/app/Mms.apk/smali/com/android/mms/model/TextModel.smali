.class public Lcom/android/mms/model/TextModel;
.super Lcom/android/mms/model/RegionMediaModel;
.source "TextModel.java"


# instance fields
.field private final mCharset:I

.field private mText:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/android/mms/drm/DrmWrapper;Lcom/android/mms/model/RegionModel;)V
    .locals 7
    .parameter "context"
    .parameter "contentType"
    .parameter "src"
    .parameter "charset"
    .parameter "wrapper"
    .parameter "regionModel"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/drm/mobile2/OMADRMException;
        }
    .end annotation

    .prologue
    .line 82
    const-string v2, "text"

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/model/RegionMediaModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/drm/DrmWrapper;Lcom/android/mms/model/RegionModel;)V

    .line 84
    if-nez p4, :cond_0

    .line 87
    const/4 p4, 0x4

    .line 89
    :cond_0
    iput p4, p0, Lcom/android/mms/model/TextModel;->mCharset:I

    .line 90
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I[BLcom/android/mms/model/RegionModel;)V
    .locals 7
    .parameter "context"
    .parameter "contentType"
    .parameter "src"
    .parameter "charset"
    .parameter "data"
    .parameter "region"

    .prologue
    .line 47
    const-string v2, "text"

    if-eqz p5, :cond_2

    move-object v5, p5

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/model/RegionMediaModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLcom/android/mms/model/RegionModel;)V

    .line 50
    if-nez p4, :cond_0

    .line 53
    const/4 p4, 0x4

    .line 56
    :cond_0
    const/16 v0, 0x3e8

    if-ne p4, v0, :cond_1

    .line 57
    const/4 p4, 0x4

    .line 59
    :cond_1
    iput p4, p0, Lcom/android/mms/model/TextModel;->mCharset:I

    .line 60
    invoke-direct {p0, p5}, Lcom/android/mms/model/TextModel;->extractTextFromData([B)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/model/TextModel;->mText:Ljava/lang/CharSequence;

    .line 61
    return-void

    .line 47
    :cond_2
    const/4 v0, 0x0

    new-array v0, v0, [B

    move-object v5, v0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/model/RegionModel;)V
    .locals 7
    .parameter "context"
    .parameter "contentType"
    .parameter "src"
    .parameter "region"

    .prologue
    .line 42
    const/16 v4, 0x6a

    const/4 v0, 0x0

    new-array v5, v0, [B

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/model/TextModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I[BLcom/android/mms/model/RegionModel;)V

    .line 43
    return-void
.end method

.method private extractTextFromData([B)Ljava/lang/CharSequence;
    .locals 5
    .parameter "data"

    .prologue
    .line 64
    if-eqz p1, :cond_1

    .line 66
    :try_start_0
    iget v2, p0, Lcom/android/mms/model/TextModel;->mCharset:I

    if-nez v2, :cond_0

    .line 67
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1}, Ljava/lang/String;-><init>([B)V

    .line 77
    :goto_0
    return-object v2

    .line 69
    :cond_0
    iget v2, p0, Lcom/android/mms/model/TextModel;->mCharset:I

    invoke-static {v2}, Lcom/google/android/mms/pdu/CharacterSets;->getMimeName(I)Ljava/lang/String;

    move-result-object v1

    .line 70
    .local v1, name:Ljava/lang/String;
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 72
    .end local v1           #name:Ljava/lang/String;
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 73
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    const-string v2, "Mms/text"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported encoding: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/mms/model/TextModel;->mCharset:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 74
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1}, Ljava/lang/String;-><init>([B)V

    goto :goto_0

    .line 77
    .end local v0           #e:Ljava/io/UnsupportedEncodingException;
    :cond_1
    const-string v2, ""

    goto :goto_0
.end method


# virtual methods
.method public cloneText()V
    .locals 2

    .prologue
    .line 131
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/mms/model/TextModel;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/mms/model/TextModel;->mText:Ljava/lang/CharSequence;

    .line 132
    return-void
.end method

.method public getCharset()I
    .locals 1

    .prologue
    .line 135
    iget v0, p0, Lcom/android/mms/model/TextModel;->mCharset:I

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 3

    .prologue
    const-string v2, "Mms/text"

    .line 93
    iget-object v1, p0, Lcom/android/mms/model/TextModel;->mText:Ljava/lang/CharSequence;

    if-nez v1, :cond_0

    .line 95
    :try_start_0
    invoke-virtual {p0}, Lcom/android/mms/model/TextModel;->getData()[B

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/mms/model/TextModel;->extractTextFromData([B)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/model/TextModel;->mText:Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/drm/mobile2/OMADRMException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 109
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/mms/model/TextModel;->mText:Ljava/lang/CharSequence;

    instance-of v1, v1, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 110
    iget-object v1, p0, Lcom/android/mms/model/TextModel;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/model/TextModel;->mText:Ljava/lang/CharSequence;

    .line 113
    :cond_1
    iget-object v1, p0, Lcom/android/mms/model/TextModel;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 96
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 97
    .local v0, e:Landroid/drm/mobile2/OMADRMException;
    const-string v1, "Mms/text"

    invoke-virtual {v0}, Landroid/drm/mobile2/OMADRMException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 99
    invoke-virtual {v0}, Landroid/drm/mobile2/OMADRMException;->getMessage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/model/TextModel;->mText:Ljava/lang/CharSequence;

    goto :goto_0

    .line 100
    .end local v0           #e:Landroid/drm/mobile2/OMADRMException;
    :catch_1
    move-exception v1

    move-object v0, v1

    .line 101
    .local v0, e:Ljava/io/IOException;
    const-string v1, "Mms/text"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 102
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/model/TextModel;->mText:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public handleEvent(Lorg/w3c/dom/events/Event;)V
    .locals 4
    .parameter "evt"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 140
    invoke-interface {p1}, Lorg/w3c/dom/events/Event;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SmilMediaStart"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 141
    iput-boolean v3, p0, Lcom/android/mms/model/RegionMediaModel;->mVisible:Z

    .line 146
    :cond_0
    :goto_0
    invoke-virtual {p0, v2}, Lcom/android/mms/model/TextModel;->notifyModelChanged(Z)V

    .line 147
    return-void

    .line 142
    :cond_1
    iget-short v0, p0, Lcom/android/mms/model/MediaModel;->mFill:S

    if-eq v0, v3, :cond_0

    .line 143
    iput-boolean v2, p0, Lcom/android/mms/model/RegionMediaModel;->mVisible:Z

    goto :goto_0
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 117
    iput-object p1, p0, Lcom/android/mms/model/TextModel;->mText:Ljava/lang/CharSequence;

    .line 118
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/mms/model/TextModel;->notifyModelChanged(Z)V

    .line 119
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Z)V
    .locals 2
    .parameter "text"
    .parameter "addTextSize"

    .prologue
    .line 122
    iput-object p1, p0, Lcom/android/mms/model/TextModel;->mText:Ljava/lang/CharSequence;

    .line 123
    if-eqz p2, :cond_0

    .line 124
    iget-object v1, p0, Lcom/android/mms/model/TextModel;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 125
    .local v0, textString:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    iput v1, p0, Lcom/android/mms/model/MediaModel;->mSize:I

    .line 127
    .end local v0           #textString:Ljava/lang/String;
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/mms/model/TextModel;->notifyModelChanged(Z)V

    .line 128
    return-void
.end method
