.class final Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;
.super Ljava/lang/Object;
.source "SmilPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/dom/smil/SmilPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TimelineEntry"
.end annotation


# instance fields
.field private final mAction:I

.field private final mElement:Lorg/w3c/dom/smil/ElementTime;

.field private final mOffsetTime:D


# direct methods
.method public constructor <init>(DLorg/w3c/dom/smil/ElementTime;I)V
    .locals 0
    .parameter "offsetTime"
    .parameter "element"
    .parameter "action"

    .prologue
    .line 758
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 759
    iput-wide p1, p0, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;->mOffsetTime:D

    .line 760
    iput-object p3, p0, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;->mElement:Lorg/w3c/dom/smil/ElementTime;

    .line 761
    iput p4, p0, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;->mAction:I

    .line 762
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;)D
    .locals 2
    .parameter "x0"

    .prologue
    .line 747
    iget-wide v0, p0, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;->mOffsetTime:D

    return-wide v0
.end method


# virtual methods
.method public getAction()I
    .locals 1

    .prologue
    .line 773
    iget v0, p0, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;->mAction:I

    return v0
.end method

.method public getElement()Lorg/w3c/dom/smil/ElementTime;
    .locals 1

    .prologue
    .line 769
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;->mElement:Lorg/w3c/dom/smil/ElementTime;

    return-object v0
.end method

.method public getOffsetTime()D
    .locals 2

    .prologue
    .line 765
    iget-wide v0, p0, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;->mOffsetTime:D

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 777
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 778
    .local v0, s:Ljava/lang/StringBuffer;
    const-string v1, "Type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;->mElement:Lorg/w3c/dom/smil/ElementTime;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " offset = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;->getOffsetTime()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " action = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;->getAction()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
