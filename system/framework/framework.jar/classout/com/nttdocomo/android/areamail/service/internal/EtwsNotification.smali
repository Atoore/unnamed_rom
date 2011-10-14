.class public Lcom/nttdocomo/android/areamail/service/internal/EtwsNotification;
.super Ljava/lang/Object;
.source "EtwsNotification.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nttdocomo/android/areamail/service/internal/EtwsNotification$SecurityInformation;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "areamail.service"

.field private static final PDU_HEADER_LENGTH:I = 0x6

.field private static final PDU_MAX_LENGTH:I = 0x38

.field public static WARNING_TYPE_EARTHQUAKE:I

.field public static WARNING_TYPE_EARTHQUAKE_AND_TSUNAMI:I

.field public static WARNING_TYPE_TEST:I

.field public static WARNING_TYPE_TSUNAMI:I


# instance fields
.field private mBuzzerFlag:Z

.field private mMessageId:I

.field private mPopupFlag:Z

.field private mSecurityInformation:Lcom/nttdocomo/android/areamail/service/internal/EtwsNotification$SecurityInformation;

.field private mSerialNumber:I

.field private mWarningType:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 46
    const/4 v0, 0x0

    sput v0, Lcom/nttdocomo/android/areamail/service/internal/EtwsNotification;->WARNING_TYPE_EARTHQUAKE:I

    .line 47
    const/4 v0, 0x1

    sput v0, Lcom/nttdocomo/android/areamail/service/internal/EtwsNotification;->WARNING_TYPE_TSUNAMI:I

    .line 48
    const/4 v0, 0x2

    sput v0, Lcom/nttdocomo/android/areamail/service/internal/EtwsNotification;->WARNING_TYPE_EARTHQUAKE_AND_TSUNAMI:I

    .line 49
    const/4 v0, 0x3

    sput v0, Lcom/nttdocomo/android/areamail/service/internal/EtwsNotification;->WARNING_TYPE_TEST:I

    return-void
.end method

.method private constructor <init>([B)V
    .registers 4
    .parameter "pdu"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput v0, p0, Lcom/nttdocomo/android/areamail/service/internal/EtwsNotification;->mWarningType:I

    .line 59
    iput v0, p0, Lcom/nttdocomo/android/areamail/service/internal/EtwsNotification;->mMessageId:I

    .line 62
    iput v0, p0, Lcom/nttdocomo/android/areamail/service/internal/EtwsNotification;->mSerialNumber:I

    .line 65
    iput-boolean v1, p0, Lcom/nttdocomo/android/areamail/service/internal/EtwsNotification;->mBuzzerFlag:Z

    .line 68
    iput-boolean v1, p0, Lcom/nttdocomo/android/areamail/service/internal/EtwsNotification;->mPopupFlag:Z

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nttdocomo/android/areamail/service/internal/EtwsNotification;->mSecurityInformation:Lcom/nttdocomo/android/areamail/service/internal/EtwsNotification$SecurityInformation;

    .line 98
    invoke-direct {p0, p1}, Lcom/nttdocomo/android/areamail/service/internal/EtwsNotification;->parse([B)V

    .line 99
    return-void
.end method

.method public static createMessage([B)Lcom/nttdocomo/android/areamail/service/internal/EtwsNotification;
    .registers 5
    .parameter "pdu"

    .prologue
    const/4 v3, 0x0

    .line 80
    if-eqz p0, :cond_c

    array-length v1, p0

    const/4 v2, 0x6

    if-lt v1, v2, :cond_c

    array-length v1, p0

    const/16 v2, 0x38

    if-le v1, v2, :cond_e

    :cond_c
    move-object v1, v3

    .line 88
    :goto_d
    return-object v1

    .line 84
    :cond_e
    :try_start_e
    new-instance v1, Lcom/nttdocomo/android/areamail/service/internal/EtwsNotification;

    invoke-direct {v1, p0}, Lcom/nttdocomo/android/areamail/service/internal/EtwsNotification;-><init>([B)V
    :try_end_13
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_e .. :try_end_13} :catch_14

    goto :goto_d

    .line 85
    :catch_14
    move-exception v1

    move-object v0, v1

    .line 86
    .local v0, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v1, "areamail.service"

    const-string v2, "EtwsNotification Constructerparse body error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, v3

    .line 88
    goto :goto_d
.end method

.method private parse([B)V
    .registers 6
    .parameter "pdu"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 160
    aget-byte v0, p1, v2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    aget-byte v1, p1, v3

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    iput v0, p0, Lcom/nttdocomo/android/areamail/service/internal/EtwsNotification;->mSerialNumber:I

    .line 161
    const/4 v0, 0x2

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    const/4 v1, 0x3

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    iput v0, p0, Lcom/nttdocomo/android/areamail/service/internal/EtwsNotification;->mMessageId:I

    .line 162
    const/4 v0, 0x4

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    const/4 v1, 0x5

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    iput v0, p0, Lcom/nttdocomo/android/areamail/service/internal/EtwsNotification;->mWarningType:I

    .line 163
    iget v0, p0, Lcom/nttdocomo/android/areamail/service/internal/EtwsNotification;->mSerialNumber:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_4b

    move v0, v3

    :goto_34
    iput-boolean v0, p0, Lcom/nttdocomo/android/areamail/service/internal/EtwsNotification;->mBuzzerFlag:Z

    .line 164
    iget v0, p0, Lcom/nttdocomo/android/areamail/service/internal/EtwsNotification;->mSerialNumber:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_4d

    move v0, v3

    :goto_3d
    iput-boolean v0, p0, Lcom/nttdocomo/android/areamail/service/internal/EtwsNotification;->mPopupFlag:Z

    .line 165
    array-length v0, p1

    const/4 v1, 0x6

    if-le v0, v1, :cond_4a

    .line 166
    new-instance v0, Lcom/nttdocomo/android/areamail/service/internal/EtwsNotification$SecurityInformation;

    invoke-direct {v0, p0, p1}, Lcom/nttdocomo/android/areamail/service/internal/EtwsNotification$SecurityInformation;-><init>(Lcom/nttdocomo/android/areamail/service/internal/EtwsNotification;[B)V

    iput-object v0, p0, Lcom/nttdocomo/android/areamail/service/internal/EtwsNotification;->mSecurityInformation:Lcom/nttdocomo/android/areamail/service/internal/EtwsNotification$SecurityInformation;

    .line 168
    :cond_4a
    return-void

    :cond_4b
    move v0, v2

    .line 163
    goto :goto_34

    :cond_4d
    move v0, v2

    .line 164
    goto :goto_3d
.end method


# virtual methods
.method public getBuzzerFlag()Z
    .registers 2

    .prologue
    .line 134
    iget-boolean v0, p0, Lcom/nttdocomo/android/areamail/service/internal/EtwsNotification;->mBuzzerFlag:Z

    return v0
.end method

.method public getMessageId()I
    .registers 2

    .prologue
    .line 116
    iget v0, p0, Lcom/nttdocomo/android/areamail/service/internal/EtwsNotification;->mMessageId:I

    return v0
.end method

.method public getPopupFlag()Z
    .registers 2

    .prologue
    .line 143
    iget-boolean v0, p0, Lcom/nttdocomo/android/areamail/service/internal/EtwsNotification;->mPopupFlag:Z

    return v0
.end method

.method public getSecurityInformation()Lcom/nttdocomo/android/areamail/service/internal/EtwsNotification$SecurityInformation;
    .registers 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/nttdocomo/android/areamail/service/internal/EtwsNotification;->mSecurityInformation:Lcom/nttdocomo/android/areamail/service/internal/EtwsNotification$SecurityInformation;

    return-object v0
.end method

.method public getSerialNumber()I
    .registers 2

    .prologue
    .line 125
    iget v0, p0, Lcom/nttdocomo/android/areamail/service/internal/EtwsNotification;->mSerialNumber:I

    return v0
.end method

.method public getWarningType()I
    .registers 2

    .prologue
    .line 107
    iget v0, p0, Lcom/nttdocomo/android/areamail/service/internal/EtwsNotification;->mWarningType:I

    return v0
.end method
