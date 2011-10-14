.class public Lcom/nttdocomo/android/areamail/provider/MessageInfo;
.super Ljava/lang/Object;
.source "MessageInfo.java"


# instance fields
.field public mAppId:J

.field public mBody:Ljava/lang/String;

.field public mDate:J

.field public mRead:Z

.field public mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object v0, p0, Lcom/nttdocomo/android/areamail/provider/MessageInfo;->mTitle:Ljava/lang/String;

    .line 48
    iput-object v0, p0, Lcom/nttdocomo/android/areamail/provider/MessageInfo;->mBody:Ljava/lang/String;

    .line 49
    iput-wide v1, p0, Lcom/nttdocomo/android/areamail/provider/MessageInfo;->mDate:J

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nttdocomo/android/areamail/provider/MessageInfo;->mRead:Z

    .line 51
    iput-wide v1, p0, Lcom/nttdocomo/android/areamail/provider/MessageInfo;->mAppId:J

    .line 52
    return-void
.end method
