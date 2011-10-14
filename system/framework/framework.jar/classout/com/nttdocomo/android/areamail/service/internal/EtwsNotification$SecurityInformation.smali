.class Lcom/nttdocomo/android/areamail/service/internal/EtwsNotification$SecurityInformation;
.super Ljava/lang/Object;
.source "EtwsNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nttdocomo/android/areamail/service/internal/EtwsNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SecurityInformation"
.end annotation


# instance fields
.field public day:I

.field public hour:I

.field public minute:I

.field public month:I

.field public second:I

.field public signature:[B

.field final synthetic this$0:Lcom/nttdocomo/android/areamail/service/internal/EtwsNotification;

.field public timeZone:I

.field public year:I


# direct methods
.method public constructor <init>(Lcom/nttdocomo/android/areamail/service/internal/EtwsNotification;[B)V
    .registers 5
    .parameter
    .parameter "pdu"

    .prologue
    .line 208
    iput-object p1, p0, Lcom/nttdocomo/android/areamail/service/internal/EtwsNotification$SecurityInformation;->this$0:Lcom/nttdocomo/android/areamail/service/internal/EtwsNotification;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 209
    const/4 v0, 0x6

    aget-byte v0, p2, v0

    iput v0, p0, Lcom/nttdocomo/android/areamail/service/internal/EtwsNotification$SecurityInformation;->year:I

    .line 210
    const/4 v0, 0x7

    aget-byte v0, p2, v0

    iput v0, p0, Lcom/nttdocomo/android/areamail/service/internal/EtwsNotification$SecurityInformation;->month:I

    .line 211
    const/16 v0, 0x8

    aget-byte v0, p2, v0

    iput v0, p0, Lcom/nttdocomo/android/areamail/service/internal/EtwsNotification$SecurityInformation;->day:I

    .line 212
    const/16 v0, 0x9

    aget-byte v0, p2, v0

    iput v0, p0, Lcom/nttdocomo/android/areamail/service/internal/EtwsNotification$SecurityInformation;->hour:I

    .line 213
    const/16 v0, 0xa

    aget-byte v0, p2, v0

    iput v0, p0, Lcom/nttdocomo/android/areamail/service/internal/EtwsNotification$SecurityInformation;->minute:I

    .line 214
    const/16 v0, 0xb

    aget-byte v0, p2, v0

    iput v0, p0, Lcom/nttdocomo/android/areamail/service/internal/EtwsNotification$SecurityInformation;->second:I

    .line 215
    const/16 v0, 0xc

    aget-byte v0, p2, v0

    iput v0, p0, Lcom/nttdocomo/android/areamail/service/internal/EtwsNotification$SecurityInformation;->timeZone:I

    .line 216
    const/16 v0, 0xd

    const/16 v1, 0x37

    invoke-static {p2, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    iput-object v0, p0, Lcom/nttdocomo/android/areamail/service/internal/EtwsNotification$SecurityInformation;->signature:[B

    .line 217
    return-void
.end method
