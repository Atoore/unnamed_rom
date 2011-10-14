.class public Lcom/nttdocomo/android/areamail/provider/ReceiveEntryInfo;
.super Ljava/lang/Object;
.source "ReceiveEntryInfo.java"


# instance fields
.field public mMessageId:I

.field public mText:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lcom/nttdocomo/android/areamail/provider/ReceiveEntryInfo;->mMessageId:I

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nttdocomo/android/areamail/provider/ReceiveEntryInfo;->mText:Ljava/lang/String;

    .line 35
    return-void
.end method
