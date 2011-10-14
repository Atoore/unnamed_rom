.class public Lcom/android/internal/telephony/gsm/SmsMessage;
.super Lcom/android/internal/telephony/SmsMessageBase;
.source "SmsMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;,
        Lcom/android/internal/telephony/gsm/SmsMessage$DeliverPdu;,
        Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    }
.end annotation


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "Gsm/SmsMessage"

.field public static mDay:I

.field public static mHour:I

.field public static mMin:I

.field public static mMonth:I

.field public static mSec:I

.field public static mTimezone:I

.field public static mYear:I

.field private static unsupportedDatacodingScheme:Z


# instance fields
.field private automaticDeletion:Z

.field private dataCodingScheme:I

.field private dischargeTimeMillis:J

.field private forSubmit:Z

.field private isStatusReportMessage:Z

.field private messageClass:Landroid/telephony/SmsMessage$MessageClass;

.field protected numberOfMessages:I

.field private protocolIdentifier:I

.field private replyPathPresent:Z

.field private status:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 88
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/telephony/gsm/SmsMessage;->unsupportedDatacodingScheme:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 69
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsMessageBase;-><init>()V

    .line 91
    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->replyPathPresent:Z

    .line 118
    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->isStatusReportMessage:Z

    .line 153
    const/16 v0, 0xff

    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->numberOfMessages:I

    .line 821
    return-void
.end method

.method public static ConvertDateStringToBCD(Ljava/lang/String;)[B
    .registers 9
    .parameter "mDate"

    .prologue
    .line 1992
    const-string v0, "Gsm/SmsMessage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "date : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1994
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 1995
    .local v4, year:Ljava/lang/String;
    const/4 v0, 0x2

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1996
    .local v3, month:Ljava/lang/String;
    const/4 v0, 0x4

    const/4 v1, 0x6

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1997
    .local v0, day:Ljava/lang/String;
    const/4 v1, 0x6

    const/16 v2, 0x8

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1998
    .local v1, hour:Ljava/lang/String;
    const/16 v2, 0x8

    const/16 v5, 0xa

    invoke-virtual {p0, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1999
    .local v2, min:Ljava/lang/String;
    const/16 v5, 0xa

    const/16 v6, 0xc

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 2001
    .local p0, sec:Ljava/lang/String;
    const-string v5, "Gsm/SmsMessage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "1. year:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " month:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " day:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " hour:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " min:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " sec:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2004
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .end local v4           #year:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/internal/telephony/gsm/SmsMessage;->decToBcd(I)I

    move-result v4

    sput v4, Lcom/android/internal/telephony/gsm/SmsMessage;->mYear:I

    .line 2005
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .end local v3           #month:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/internal/telephony/gsm/SmsMessage;->decToBcd(I)I

    move-result v3

    sput v3, Lcom/android/internal/telephony/gsm/SmsMessage;->mMonth:I

    .line 2006
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .end local v0           #day:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->decToBcd(I)I

    move-result v0

    sput v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDay:I

    .line 2007
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->decToBcd(I)I

    move-result v0

    sput v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mHour:I

    .line 2008
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->decToBcd(I)I

    move-result v0

    sput v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMin:I

    .line 2009
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    .end local p0           #sec:Ljava/lang/String;
    invoke-static {p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->decToBcd(I)I

    move-result p0

    sput p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mSec:I

    .line 2010
    const/4 p0, 0x0

    sput p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mTimezone:I

    .line 2012
    const/4 p0, 0x0

    .line 2013
    .local p0, zone:Ljava/util/TimeZone;
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object p0

    .line 2016
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/util/TimeZone;->getOffset(J)I

    move-result p0

    .end local p0           #zone:Ljava/util/TimeZone;
    int-to-long v2, p0

    .line 2017
    .local v2, tzOffset:J
    const-string p0, "Gsm/SmsMessage"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "timezeone"

    .end local v1           #hour:Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2018
    const-wide/16 v0, 0x0

    cmp-long p0, v2, v0

    if-gez p0, :cond_1fd

    .line 2020
    neg-long v2, v2

    .line 2021
    const-wide/32 v0, 0xdbba0

    div-long v0, v2, v0

    .line 2022
    .local v0, temp:J
    const-string p0, "Gsm/SmsMessage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "timezeone->temp"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2023
    long-to-int p0, v0

    invoke-static {p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->decToBcd(I)I

    move-result p0

    .line 2024
    .local p0, temp2:I
    div-int/lit8 v4, p0, 0xa

    shl-int/lit8 v4, v4, 0x4

    rem-int/lit8 p0, p0, 0xa

    .end local p0           #temp2:I
    add-int/lit8 p0, p0, 0x8

    add-int/2addr p0, v4

    sput p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mTimezone:I

    .line 2025
    const-string p0, "Gsm/SmsMessage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mTimezone"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/android/internal/telephony/gsm/SmsMessage;->mTimezone:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2026
    const-string p0, "Gsm/SmsMessage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "2. year:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/android/internal/telephony/gsm/SmsMessage;->mYear:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " month:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/android/internal/telephony/gsm/SmsMessage;->mMonth:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " day:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/android/internal/telephony/gsm/SmsMessage;->mDay:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " hour:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/android/internal/telephony/gsm/SmsMessage;->mHour:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " min:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/android/internal/telephony/gsm/SmsMessage;->mMin:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " sec:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/android/internal/telephony/gsm/SmsMessage;->mSec:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2029
    const-string p0, "%02d%02d%02d%02d%02d%02d%02x"

    const/4 v4, 0x7

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    sget v6, Lcom/android/internal/telephony/gsm/SmsMessage;->mYear:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget v6, Lcom/android/internal/telephony/gsm/SmsMessage;->mMonth:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    sget v6, Lcom/android/internal/telephony/gsm/SmsMessage;->mDay:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    sget v6, Lcom/android/internal/telephony/gsm/SmsMessage;->mHour:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    sget v6, Lcom/android/internal/telephony/gsm/SmsMessage;->mMin:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x5

    sget v6, Lcom/android/internal/telephony/gsm/SmsMessage;->mSec:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x6

    sget v6, Lcom/android/internal/telephony/gsm/SmsMessage;->mTimezone:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {p0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 2043
    .local p0, timestamp:Ljava/lang/String;
    :goto_1df
    const-string v0, "Gsm/SmsMessage"

    .end local v0           #temp:J
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "timestamp string: "

    .end local v2           #tzOffset:J
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2045
    invoke-static {p0}, Lcom/android/internal/telephony/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object p0

    .end local p0           #timestamp:Ljava/lang/String;
    return-object p0

    .line 2033
    .restart local v2       #tzOffset:J
    :cond_1fd
    const-wide/32 v0, 0xdbba0

    div-long v0, v2, v0

    .line 2034
    .restart local v0       #temp:J
    const-string p0, "Gsm/SmsMessage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "timezeone->temp"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2035
    long-to-int p0, v0

    invoke-static {p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->decToBcd(I)I

    move-result p0

    sput p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mTimezone:I

    .line 2036
    const-string p0, "Gsm/SmsMessage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mTimezone"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/android/internal/telephony/gsm/SmsMessage;->mTimezone:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2037
    const-string p0, "Gsm/SmsMessage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "2. year:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/android/internal/telephony/gsm/SmsMessage;->mYear:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " month:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/android/internal/telephony/gsm/SmsMessage;->mMonth:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " day:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/android/internal/telephony/gsm/SmsMessage;->mDay:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " hour:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/android/internal/telephony/gsm/SmsMessage;->mHour:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " min:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/android/internal/telephony/gsm/SmsMessage;->mMin:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " sec:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/android/internal/telephony/gsm/SmsMessage;->mSec:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2040
    const-string p0, "%02d%02d%02d%02d%02d%02d%02d"

    const/4 v4, 0x7

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    sget v6, Lcom/android/internal/telephony/gsm/SmsMessage;->mYear:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget v6, Lcom/android/internal/telephony/gsm/SmsMessage;->mMonth:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    sget v6, Lcom/android/internal/telephony/gsm/SmsMessage;->mDay:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    sget v6, Lcom/android/internal/telephony/gsm/SmsMessage;->mHour:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    sget v6, Lcom/android/internal/telephony/gsm/SmsMessage;->mMin:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x5

    sget v6, Lcom/android/internal/telephony/gsm/SmsMessage;->mSec:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x6

    sget v6, Lcom/android/internal/telephony/gsm/SmsMessage;->mTimezone:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {p0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .restart local p0       #timestamp:Ljava/lang/String;
    goto/16 :goto_1df
.end method

.method static synthetic access$000()Z
    .registers 1

    .prologue
    .line 69
    sget-boolean v0, Lcom/android/internal/telephony/gsm/SmsMessage;->unsupportedDatacodingScheme:Z

    return v0
.end method

.method public static byteToHex(B)Ljava/lang/String;
    .registers 5
    .parameter "b"

    .prologue
    .line 310
    const/16 v2, 0x10

    new-array v1, v2, [C

    fill-array-data v1, :array_20

    .line 314
    .local v1, hexDigit:[C
    const/4 v2, 0x2

    new-array v0, v2, [C

    const/4 v2, 0x0

    shr-int/lit8 v3, p0, 0x4

    and-int/lit8 v3, v3, 0xf

    aget-char v3, v1, v3

    aput-char v3, v0, v2

    const/4 v2, 0x1

    and-int/lit8 v3, p0, 0xf

    aget-char v3, v1, v3

    aput-char v3, v0, v2

    .line 315
    .local v0, array:[C
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([C)V

    return-object v2

    .line 310
    :array_20
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x61t 0x0t
        0x62t 0x0t
        0x63t 0x0t
        0x64t 0x0t
        0x65t 0x0t
        0x66t 0x0t
    .end array-data
.end method

.method public static calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    .registers 16
    .parameter "msgBody"
    .parameter "use7bitOnly"

    .prologue
    const/16 v13, 0x8c

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 1194
    new-instance v7, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    invoke-direct {v7}, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;-><init>()V

    .line 1200
    .local v7, ted:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    if-nez p1, :cond_3b

    move v10, v12

    :goto_c
    :try_start_c
    invoke-static {p0, v10}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptets(Ljava/lang/CharSequence;Z)I

    move-result v6

    .line 1201
    .local v6, septets:I
    iput v6, v7, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitCount:I

    .line 1204
    const/4 v1, 0x0

    .line 1205
    .local v1, MAX_USER_DATA_SEPTETS_WITH_HEADER_LOCAL:I
    const/4 v0, 0x0

    .line 1211
    .local v0, MAX_USER_DATA_SEPTETS_LOCAL:I
    const/16 v0, 0xa0

    .line 1212
    const/16 v1, 0x99

    .line 1215
    if-le v6, v0, :cond_7d

    .line 1217
    const/4 v5, 0x0

    .line 1218
    .local v5, pos:I
    const/4 v8, 0x0

    .line 1219
    .local v8, tempMsgBody:Ljava/lang/String;
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v9

    .line 1220
    .local v9, textLen:I
    const/4 v10, 0x0

    iput v10, v7, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    .line 1222
    :goto_23
    if-ge v5, v9, :cond_32

    .line 1223
    const/4 v3, 0x0

    .line 1224
    .local v3, nextPos:I
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v5, v1}, Lcom/android/internal/telephony/GsmAlphabet;->findGsmSeptetLimitIndex(Ljava/lang/String;II)I

    move-result v3

    .line 1226
    if-le v3, v5, :cond_32

    if-le v3, v9, :cond_3d

    .line 1233
    .end local v3           #nextPos:I
    :cond_32
    if-nez v8, :cond_4d

    .line 1234
    const/4 v10, 0x0

    iput v10, v7, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitsRemaining:I

    .line 1248
    .end local v5           #pos:I
    .end local v8           #tempMsgBody:Ljava/lang/String;
    .end local v9           #textLen:I
    :goto_37
    const/4 v10, 0x1

    iput v10, v7, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    .line 1273
    .end local v0           #MAX_USER_DATA_SEPTETS_LOCAL:I
    .end local v1           #MAX_USER_DATA_SEPTETS_WITH_HEADER_LOCAL:I
    .end local v6           #septets:I
    :goto_3a
    return-object v7

    :cond_3b
    move v10, v11

    .line 1200
    goto :goto_c

    .line 1229
    .restart local v0       #MAX_USER_DATA_SEPTETS_LOCAL:I
    .restart local v1       #MAX_USER_DATA_SEPTETS_WITH_HEADER_LOCAL:I
    .restart local v3       #nextPos:I
    .restart local v5       #pos:I
    .restart local v6       #septets:I
    .restart local v8       #tempMsgBody:Ljava/lang/String;
    .restart local v9       #textLen:I
    :cond_3d
    iget v10, v7, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    add-int/lit8 v10, v10, 0x1

    iput v10, v7, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    .line 1230
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 1231
    move v5, v3

    .line 1232
    goto :goto_23

    .line 1240
    .end local v3           #nextPos:I
    :cond_4d
    invoke-static {v8, p1}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptets(Ljava/lang/CharSequence;Z)I

    move-result v10

    sub-int v10, v1, v10

    iput v10, v7, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitsRemaining:I
    :try_end_55
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_c .. :try_end_55} :catch_56

    goto :goto_37

    .line 1249
    .end local v0           #MAX_USER_DATA_SEPTETS_LOCAL:I
    .end local v1           #MAX_USER_DATA_SEPTETS_WITH_HEADER_LOCAL:I
    .end local v5           #pos:I
    .end local v6           #septets:I
    .end local v8           #tempMsgBody:Ljava/lang/String;
    .end local v9           #textLen:I
    :catch_56
    move-exception v10

    move-object v2, v10

    .line 1250
    .local v2, ex:Lcom/android/internal/telephony/EncodeException;
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v10

    mul-int/lit8 v4, v10, 0x2

    .line 1251
    .local v4, octets:I
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v10

    iput v10, v7, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitCount:I

    .line 1252
    if-le v4, v13, :cond_8c

    .line 1258
    rem-int/lit16 v10, v4, 0x86

    if-eqz v10, :cond_85

    .line 1259
    div-int/lit16 v10, v4, 0x86

    add-int/lit8 v10, v10, 0x1

    iput v10, v7, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    .line 1260
    const/16 v10, 0x86

    rem-int/lit16 v11, v4, 0x86

    sub-int/2addr v10, v11

    div-int/lit8 v10, v10, 0x2

    iput v10, v7, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitsRemaining:I

    .line 1271
    :goto_79
    const/4 v10, 0x3

    iput v10, v7, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    goto :goto_3a

    .line 1244
    .end local v2           #ex:Lcom/android/internal/telephony/EncodeException;
    .end local v4           #octets:I
    .restart local v0       #MAX_USER_DATA_SEPTETS_LOCAL:I
    .restart local v1       #MAX_USER_DATA_SEPTETS_WITH_HEADER_LOCAL:I
    .restart local v6       #septets:I
    :cond_7d
    const/4 v10, 0x1

    :try_start_7e
    iput v10, v7, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    .line 1245
    sub-int v10, v0, v6

    iput v10, v7, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitsRemaining:I
    :try_end_84
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_7e .. :try_end_84} :catch_56

    goto :goto_37

    .line 1263
    .end local v0           #MAX_USER_DATA_SEPTETS_LOCAL:I
    .end local v1           #MAX_USER_DATA_SEPTETS_WITH_HEADER_LOCAL:I
    .end local v6           #septets:I
    .restart local v2       #ex:Lcom/android/internal/telephony/EncodeException;
    .restart local v4       #octets:I
    :cond_85
    div-int/lit16 v10, v4, 0x86

    iput v10, v7, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    .line 1264
    iput v11, v7, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitsRemaining:I

    goto :goto_79

    .line 1268
    :cond_8c
    iput v12, v7, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    .line 1269
    sub-int v10, v13, v4

    div-int/lit8 v10, v10, 0x2

    iput v10, v7, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitsRemaining:I

    goto :goto_79
.end method

.method public static calculateLength(Ljava/lang/CharSequence;ZI)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    .registers 8
    .parameter "msgBody"
    .parameter "use7bitOnly"
    .parameter "encodingType"

    .prologue
    .line 1285
    new-instance v2, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    invoke-direct {v2}, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;-><init>()V

    .line 1286
    .local v2, ted:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    if-nez p2, :cond_60

    .line 1293
    :try_start_7
    invoke-static {p0, p1}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptets(Ljava/lang/CharSequence;Z)I

    move-result v1

    .line 1294
    .local v1, septets:I
    iput v1, v2, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitCount:I

    .line 1297
    const/4 p2, 0x0

    .line 1298
    .local p2, MAX_USER_DATA_SEPTETS_WITH_HEADER_LOCAL:I
    const/4 p2, 0x0

    .line 1304
    .local p2, MAX_USER_DATA_SEPTETS_LOCAL:I
    const/16 p2, 0xa0

    .line 1305
    const/16 v0, 0x99

    .line 1308
    .local v0, MAX_USER_DATA_SEPTETS_WITH_HEADER_LOCAL:I
    if-le v1, p2, :cond_58

    .line 1309
    const/4 p2, 0x0

    .line 1310
    .local p2, pos:I
    const/4 v1, 0x0

    .line 1311
    .local v1, tempMsgBody:Ljava/lang/String;
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    .line 1312
    .local v4, textLen:I
    const/4 v3, 0x0

    iput v3, v2, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    move-object v3, v1

    .end local v1           #tempMsgBody:Ljava/lang/String;
    .local v3, tempMsgBody:Ljava/lang/String;
    move v1, p2

    .line 1314
    .end local p2           #pos:I
    .local v1, pos:I
    :goto_20
    if-ge v1, v4, :cond_2f

    .line 1315
    const/4 p2, 0x0

    .line 1316
    .local p2, nextPos:I
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    .end local p2           #nextPos:I
    invoke-static {p2, v1, v0}, Lcom/android/internal/telephony/GsmAlphabet;->findGsmSeptetLimitIndex(Ljava/lang/String;II)I

    move-result p2

    .line 1318
    .restart local p2       #nextPos:I
    if-le p2, v1, :cond_2f

    if-le p2, v4, :cond_38

    .line 1326
    .end local p2           #nextPos:I
    :cond_2f
    if-nez v3, :cond_4a

    .line 1327
    const/4 p0, 0x0

    iput p0, v2, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitsRemaining:I

    .line 1340
    .end local v1           #pos:I
    .end local v3           #tempMsgBody:Ljava/lang/String;
    .end local v4           #textLen:I
    .end local p0
    :goto_34
    const/4 p0, 0x1

    iput p0, v2, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    .line 1367
    .end local v0           #MAX_USER_DATA_SEPTETS_WITH_HEADER_LOCAL:I
    .end local p1
    :cond_37
    :goto_37
    return-object v2

    .line 1321
    .restart local v0       #MAX_USER_DATA_SEPTETS_WITH_HEADER_LOCAL:I
    .restart local v1       #pos:I
    .restart local v3       #tempMsgBody:Ljava/lang/String;
    .restart local v4       #textLen:I
    .restart local p0
    .restart local p1
    .restart local p2       #nextPos:I
    :cond_38
    iget v3, v2, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    .end local v3           #tempMsgBody:Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    .line 1322
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1323
    .local v1, tempMsgBody:Ljava/lang/String;
    move p2, p2

    .local p2, pos:I
    move-object v3, v1

    .end local v1           #tempMsgBody:Ljava/lang/String;
    .restart local v3       #tempMsgBody:Ljava/lang/String;
    move v1, p2

    .line 1324
    .end local p2           #pos:I
    .local v1, pos:I
    goto :goto_20

    .line 1333
    :cond_4a
    invoke-static {v3, p1}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptets(Ljava/lang/CharSequence;Z)I

    move-result p0

    .end local p0
    sub-int p0, v0, p0

    iput p0, v2, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitsRemaining:I
    :try_end_52
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_7 .. :try_end_52} :catch_53

    goto :goto_34

    .line 1341
    .end local v0           #MAX_USER_DATA_SEPTETS_WITH_HEADER_LOCAL:I
    .end local v1           #pos:I
    .end local v3           #tempMsgBody:Ljava/lang/String;
    .end local v4           #textLen:I
    :catch_53
    move-exception p0

    .line 1342
    .local p0, e:Lcom/android/internal/telephony/EncodeException;
    invoke-virtual {p0}, Lcom/android/internal/telephony/EncodeException;->printStackTrace()V

    goto :goto_37

    .line 1336
    .restart local v0       #MAX_USER_DATA_SEPTETS_WITH_HEADER_LOCAL:I
    .local v1, septets:I
    .local p0, msgBody:Ljava/lang/CharSequence;
    .local p2, MAX_USER_DATA_SEPTETS_LOCAL:I
    :cond_58
    const/4 p0, 0x1

    :try_start_59
    iput p0, v2, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    .line 1337
    .end local p0           #msgBody:Ljava/lang/CharSequence;
    sub-int p0, p2, v1

    iput p0, v2, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitsRemaining:I
    :try_end_5f
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_59 .. :try_end_5f} :catch_53

    goto :goto_34

    .line 1344
    .end local v0           #MAX_USER_DATA_SEPTETS_WITH_HEADER_LOCAL:I
    .end local v1           #septets:I
    .restart local p0       #msgBody:Ljava/lang/CharSequence;
    .local p2, encodingType:I
    :cond_60
    const/4 p1, 0x1

    if-ne p2, p1, :cond_37

    .line 1346
    .end local p1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    .line 1347
    .local p1, octets:I
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    .end local p0           #msgBody:Ljava/lang/CharSequence;
    iput p0, v2, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitCount:I

    .line 1348
    const/16 p0, 0x8c

    if-le p1, p0, :cond_92

    .line 1352
    rem-int/lit16 p0, p1, 0x86

    if-eqz p0, :cond_8a

    .line 1353
    div-int/lit16 p0, p1, 0x86

    add-int/lit8 p0, p0, 0x1

    iput p0, v2, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    .line 1354
    const/16 p0, 0x86

    rem-int/lit16 p1, p1, 0x86

    .end local p1           #octets:I
    sub-int/2addr p0, p1

    div-int/lit8 p0, p0, 0x2

    iput p0, v2, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitsRemaining:I

    .line 1364
    :goto_86
    const/4 p0, 0x3

    iput p0, v2, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    goto :goto_37

    .line 1357
    .restart local p1       #octets:I
    :cond_8a
    div-int/lit16 p0, p1, 0x86

    iput p0, v2, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    .line 1358
    const/4 p0, 0x0

    iput p0, v2, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitsRemaining:I

    goto :goto_86

    .line 1361
    :cond_92
    const/4 p0, 0x1

    iput p0, v2, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    .line 1362
    const/16 p0, 0x8c

    sub-int/2addr p0, p1

    div-int/lit8 p0, p0, 0x2

    iput p0, v2, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitsRemaining:I

    goto :goto_86
.end method

.method public static charToHex(C)Ljava/lang/String;
    .registers 5
    .parameter "c"

    .prologue
    .line 320
    ushr-int/lit8 v2, p0, 0x8

    int-to-byte v0, v2

    .line 321
    .local v0, hi:B
    and-int/lit16 v2, p0, 0xff

    int-to-byte v1, v2

    .line 322
    .local v1, lo:B
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->byteToHex(B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->byteToHex(B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static createFromEfRecord(I[B)Lcom/android/internal/telephony/gsm/SmsMessage;
    .registers 11
    .parameter "index"
    .parameter "data"

    .prologue
    const/4 v8, 0x0

    const/4 v5, 0x1

    const-string v7, "Gsm/SmsMessage"

    .line 245
    :try_start_4
    new-instance v1, Lcom/android/internal/telephony/gsm/SmsMessage;

    invoke-direct {v1}, Lcom/android/internal/telephony/gsm/SmsMessage;-><init>()V

    .line 247
    .local v1, msg:Lcom/android/internal/telephony/gsm/SmsMessage;
    iput p0, v1, Lcom/android/internal/telephony/SmsMessageBase;->indexOnIcc:I

    .line 252
    const/4 v4, 0x0

    aget-byte v4, p1, v4

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_1b

    .line 253
    const-string v4, "Gsm/SmsMessage"

    const-string v5, "SMS parsing failed: Trying to parse a free record"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v8

    .line 273
    .end local v1           #msg:Lcom/android/internal/telephony/gsm/SmsMessage;
    :goto_1a
    return-object v4

    .line 257
    .restart local v1       #msg:Lcom/android/internal/telephony/gsm/SmsMessage;
    :cond_1b
    const/4 v4, 0x0

    aget-byte v4, p1, v4

    and-int/lit8 v4, v4, 0x7

    iput v4, v1, Lcom/android/internal/telephony/SmsMessageBase;->statusOnIcc:I

    .line 260
    array-length v4, p1

    sub-int v3, v4, v5

    .line 264
    .local v3, size:I
    new-array v2, v3, [B

    .line 265
    .local v2, pdu:[B
    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {p1, v4, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 266
    invoke-direct {v1, v2}, Lcom/android/internal/telephony/gsm/SmsMessage;->parsePdu([B)V

    .line 268
    const-string v4, "Gsm/SmsMessage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mti: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v1, Lcom/android/internal/telephony/SmsMessageBase;->mti:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " indexOnIcc :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v1, Lcom/android/internal/telephony/SmsMessageBase;->indexOnIcc:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " statusOnIcc:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v1, Lcom/android/internal/telephony/SmsMessageBase;->statusOnIcc:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_62
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_62} :catch_64

    move-object v4, v1

    .line 270
    goto :goto_1a

    .line 271
    .end local v1           #msg:Lcom/android/internal/telephony/gsm/SmsMessage;
    .end local v2           #pdu:[B
    .end local v3           #size:I
    :catch_64
    move-exception v4

    move-object v0, v4

    .line 272
    .local v0, ex:Ljava/lang/RuntimeException;
    const-string v4, "Gsm/SmsMessage"

    const-string v4, "SMS PDU parsing failed: "

    invoke-static {v7, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v4, v8

    .line 273
    goto :goto_1a
.end method

.method public static createFromPdu([B)Lcom/android/internal/telephony/gsm/SmsMessage;
    .registers 5
    .parameter "pdu"

    .prologue
    .line 167
    :try_start_0
    new-instance v1, Lcom/android/internal/telephony/gsm/SmsMessage;

    invoke-direct {v1}, Lcom/android/internal/telephony/gsm/SmsMessage;-><init>()V

    .line 168
    .local v1, msg:Lcom/android/internal/telephony/gsm/SmsMessage;
    invoke-direct {v1, p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->parsePdu([B)V
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_8} :catch_a

    move-object v2, v1

    .line 172
    .end local v1           #msg:Lcom/android/internal/telephony/gsm/SmsMessage;
    :goto_9
    return-object v2

    .line 170
    :catch_a
    move-exception v2

    move-object v0, v2

    .line 171
    .local v0, ex:Ljava/lang/RuntimeException;
    const-string v2, "Gsm/SmsMessage"

    const-string v3, "SMS PDU parsing failed: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 172
    const/4 v2, 0x0

    goto :goto_9
.end method

.method private static decToBcd(I)I
    .registers 5
    .parameter "digit"

    .prologue
    .line 1973
    const/4 v1, 0x0

    .line 1974
    .local v1, left:I
    const/4 v2, 0x0

    .line 1975
    .local v2, right:I
    const/4 v0, 0x0

    .line 1977
    .local v0, bcd_value:I
    div-int/lit8 v1, p0, 0xa

    .line 1978
    rem-int/lit8 v2, p0, 0xa

    .line 1980
    mul-int/lit8 v3, v2, 0xa

    add-int v0, v3, v1

    .line 1982
    return v0
.end method

.method private static encodeUCS2(Ljava/lang/String;[B)[B
    .registers 9
    .parameter "message"
    .parameter "header"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 433
    const-string/jumbo v3, "utf-16be"

    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 435
    .local v1, textPart:[B
    if-eqz p1, :cond_31

    .line 437
    array-length v3, p1

    array-length v4, v1

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    new-array v2, v3, [B

    .line 439
    .local v2, userData:[B
    array-length v3, p1

    int-to-byte v3, v3

    aput-byte v3, v2, v5

    .line 440
    array-length v3, p1

    invoke-static {p1, v5, v2, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 441
    array-length v3, p1

    add-int/lit8 v3, v3, 0x1

    array-length v4, v1

    invoke-static {v1, v5, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 446
    :goto_21
    array-length v3, v2

    add-int/lit8 v3, v3, 0x1

    new-array v0, v3, [B

    .line 447
    .local v0, ret:[B
    array-length v3, v2

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v5

    .line 448
    array-length v3, v2

    invoke-static {v2, v5, v0, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 449
    return-object v0

    .line 444
    .end local v0           #ret:[B
    .end local v2           #userData:[B
    :cond_31
    move-object v2, v1

    .restart local v2       #userData:[B
    goto :goto_21
.end method

.method public static getSimDeliverPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)Lcom/android/internal/telephony/gsm/SmsMessage$DeliverPdu;
    .registers 9
    .parameter "scAddress"
    .parameter "Address"
    .parameter "message"
    .parameter "date"
    .parameter "header"

    .prologue
    .line 2103
    if-eqz p2, :cond_4

    if-nez p1, :cond_6

    .line 2104
    :cond_4
    const/4 p0, 0x0

    .line 2192
    .end local p0
    .end local p1
    .end local p2
    .end local p3
    .end local p4
    :goto_5
    return-object p0

    .line 2107
    .restart local p0
    .restart local p1
    .restart local p2
    .restart local p3
    .restart local p4
    :cond_6
    new-instance v2, Lcom/android/internal/telephony/gsm/SmsMessage$DeliverPdu;

    invoke-direct {v2}, Lcom/android/internal/telephony/gsm/SmsMessage$DeliverPdu;-><init>()V

    .line 2109
    .local v2, ret:Lcom/android/internal/telephony/gsm/SmsMessage$DeliverPdu;
    const/4 v1, 0x0

    .line 2111
    .local v1, mtiByte:B
    const/4 v0, 0x0

    .line 2115
    .local v0, bo:Ljava/io/ByteArrayOutputStream;
    :try_start_d
    invoke-static {p0, p1, v1, v2}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSimDeliverPduHead(Ljava/lang/String;Ljava/lang/String;BLcom/android/internal/telephony/gsm/SmsMessage$DeliverPdu;)Ljava/io/ByteArrayOutputStream;
    :try_end_10
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_d .. :try_end_10} :catch_3d

    move-result-object p0

    .line 2119
    .end local v0           #bo:Ljava/io/ByteArrayOutputStream;
    .local p0, bo:Ljava/io/ByteArrayOutputStream;
    :try_start_11
    invoke-static {p2, p4}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPackedWithHeader(Ljava/lang/String;[B)[B

    move-result-object v0

    .line 2121
    .local v0, userData:[B
    const/4 p1, 0x0

    aget-byte p1, v0, p1

    .end local p1
    and-int/lit16 p1, p1, 0xff

    const/16 v1, 0xa0

    if-le p1, v1, :cond_20

    .line 2123
    .end local v1           #mtiByte:B
    const/4 p0, 0x0

    goto :goto_5

    .line 2133
    :cond_20
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2137
    const/4 p1, 0x7

    new-array p1, p1, [B

    .line 2139
    .local p1, timestamp:[B
    invoke-static {p3}, Lcom/android/internal/telephony/gsm/SmsMessage;->ConvertDateStringToBCD(Ljava/lang/String;)[B

    move-result-object p1

    .line 2141
    const/4 v1, 0x0

    array-length v3, p1

    invoke-virtual {p0, p1, v1, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 2143
    const/4 p1, 0x0

    array-length v1, v0

    .end local p1           #timestamp:[B
    invoke-virtual {p0, v0, p1, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_35
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_11 .. :try_end_35} :catch_89

    .line 2191
    .end local v0           #userData:[B
    .end local p2
    .end local p3
    .end local p4
    :goto_35
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    .end local p0           #bo:Ljava/io/ByteArrayOutputStream;
    iput-object p0, v2, Lcom/android/internal/telephony/SmsMessageBase$DeliverPduBase;->encodedMessage:[B

    move-object p0, v2

    .line 2192
    goto :goto_5

    .line 2145
    .local v0, bo:Ljava/io/ByteArrayOutputStream;
    .restart local v1       #mtiByte:B
    .local p0, scAddress:Ljava/lang/String;
    .local p1, Address:Ljava/lang/String;
    .restart local p2
    .restart local p3
    .restart local p4
    :catch_3d
    move-exception p0

    move-object p1, p0

    move-object p0, v0

    .line 2151
    .end local v0           #bo:Ljava/io/ByteArrayOutputStream;
    .end local v1           #mtiByte:B
    .local p0, bo:Ljava/io/ByteArrayOutputStream;
    .local p1, ex:Lcom/android/internal/telephony/EncodeException;
    :goto_40
    :try_start_40
    const-string/jumbo p1, "utf-16be"

    .end local p1           #ex:Lcom/android/internal/telephony/EncodeException;
    invoke-virtual {p2, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_46
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_40 .. :try_end_46} :catch_61

    move-result-object p1

    .line 2159
    .local p1, textPart:[B
    if-eqz p4, :cond_6b

    .line 2160
    array-length p2, p4

    .end local p2
    array-length v0, p1

    add-int/2addr p2, v0

    new-array p2, p2, [B

    .line 2162
    .local p2, userData:[B
    const/4 v0, 0x0

    const/4 v1, 0x0

    array-length v3, p4

    invoke-static {p4, v0, p2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2163
    const/4 v0, 0x0

    array-length p4, p4

    .end local p4
    array-length v1, p1

    invoke-static {p1, v0, p2, p4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2168
    .end local p1           #textPart:[B
    :goto_5a
    array-length p1, p2

    const/16 p4, 0x8c

    if-le p1, p4, :cond_6e

    .line 2170
    const/4 p0, 0x0

    goto :goto_5

    .line 2152
    .local p2, message:Ljava/lang/String;
    .restart local p4
    :catch_61
    move-exception p0

    .line 2153
    .local p0, uex:Ljava/io/UnsupportedEncodingException;
    const-string p1, "Gsm/SmsMessage"

    const-string p2, "Implausible UnsupportedEncodingException "

    .end local p2           #message:Ljava/lang/String;
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2156
    const/4 p0, 0x0

    goto :goto_5

    .line 2165
    .local p0, bo:Ljava/io/ByteArrayOutputStream;
    .restart local p1       #textPart:[B
    .restart local p2       #message:Ljava/lang/String;
    :cond_6b
    move-object p1, p1

    .local p1, userData:[B
    move-object p2, p1

    .end local p1           #userData:[B
    .local p2, userData:[B
    goto :goto_5a

    .line 2175
    .end local p4
    :cond_6e
    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2179
    const/4 p1, 0x7

    new-array p1, p1, [B

    .line 2181
    .local p1, timestamp:[B
    invoke-static {p3}, Lcom/android/internal/telephony/gsm/SmsMessage;->ConvertDateStringToBCD(Ljava/lang/String;)[B

    move-result-object p1

    .line 2183
    const/4 p3, 0x0

    array-length p4, p1

    .end local p3
    invoke-virtual {p0, p1, p3, p4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 2186
    array-length p1, p2

    .end local p1           #timestamp:[B
    invoke-virtual {p0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2188
    const/4 p1, 0x0

    array-length p3, p2

    invoke-virtual {p0, p2, p1, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_35

    .line 2145
    .local p2, message:Ljava/lang/String;
    .restart local p3
    .restart local p4
    :catch_89
    move-exception p1

    goto :goto_40
.end method

.method private static getSimDeliverPduHead(Ljava/lang/String;Ljava/lang/String;BLcom/android/internal/telephony/gsm/SmsMessage$DeliverPdu;)Ljava/io/ByteArrayOutputStream;
    .registers 11
    .parameter "scAddress"
    .parameter "Address"
    .parameter "mtiByte"
    .parameter "ret"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2056
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0xb4

    invoke-direct {v0, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 2060
    .local v0, bo:Ljava/io/ByteArrayOutputStream;
    if-nez p0, :cond_22

    .line 2061
    const/4 v2, 0x0

    iput-object v2, p3, Lcom/android/internal/telephony/SmsMessageBase$DeliverPduBase;->encodedScAddress:[B

    .line 2067
    :goto_e
    invoke-virtual {v0, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2071
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v1

    .line 2075
    .local v1, daBytes:[B
    if-nez v1, :cond_29

    .line 2077
    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2085
    :goto_1a
    array-length v2, v1

    invoke-virtual {v0, v1, v5, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 2088
    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2090
    return-object v0

    .line 2063
    .end local v1           #daBytes:[B
    :cond_22
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCDWithLength(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, p3, Lcom/android/internal/telephony/SmsMessageBase$DeliverPduBase;->encodedScAddress:[B

    goto :goto_e

    .line 2081
    .restart local v1       #daBytes:[B
    :cond_29
    array-length v2, v1

    sub-int/2addr v2, v6

    mul-int/lit8 v2, v2, 0x2

    array-length v3, v1

    sub-int/2addr v3, v6

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xf0

    const/16 v4, 0xf0

    if-ne v3, v4, :cond_3d

    move v3, v6

    :goto_38
    sub-int/2addr v2, v3

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_1a

    :cond_3d
    move v3, v5

    goto :goto_38
.end method

.method public static getSimSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .registers 15
    .parameter "scAddress"
    .parameter "Address"
    .parameter "message"
    .parameter "header"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 1890
    if-eqz p2, :cond_6

    if-nez p1, :cond_8

    :cond_6
    move-object v7, v10

    .line 1965
    :goto_7
    return-object v7

    .line 1894
    :cond_8
    new-instance v3, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    invoke-direct {v3}, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;-><init>()V

    .line 1896
    .local v3, ret:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    const/4 v2, 0x1

    .line 1898
    .local v2, mtiByte:B
    invoke-static {p0, p1, v2, v3}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSimSubmitPduHead(Ljava/lang/String;Ljava/lang/String;BLcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;)Ljava/io/ByteArrayOutputStream;

    move-result-object v0

    .line 1905
    .local v0, bo:Ljava/io/ByteArrayOutputStream;
    :try_start_12
    invoke-static {p2, p3}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPackedWithHeader(Ljava/lang/String;[B)[B

    move-result-object v6

    .line 1907
    .local v6, userData:[B
    const/4 v7, 0x0

    aget-byte v7, v6, v7

    and-int/lit16 v7, v7, 0xff

    const/16 v8, 0xa0

    if-le v7, v8, :cond_21

    move-object v7, v10

    .line 1909
    goto :goto_7

    .line 1919
    :cond_21
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1924
    const/4 v7, 0x0

    array-length v8, v6

    invoke-virtual {v0, v6, v7, v8}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_2a
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_12 .. :try_end_2a} :catch_32

    .line 1964
    :goto_2a
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    iput-object v7, v3, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedMessage:[B

    move-object v7, v3

    .line 1965
    goto :goto_7

    .line 1926
    .end local v6           #userData:[B
    :catch_32
    move-exception v7

    move-object v1, v7

    .line 1932
    .local v1, ex:Lcom/android/internal/telephony/EncodeException;
    :try_start_34
    const-string/jumbo v7, "utf-16be"

    invoke-virtual {p2, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_3a
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_34 .. :try_end_3a} :catch_52

    move-result-object v4

    .line 1940
    .local v4, textPart:[B
    if-eqz p3, :cond_5d

    .line 1941
    array-length v7, p3

    array-length v8, v4

    add-int/2addr v7, v8

    new-array v6, v7, [B

    .line 1943
    .restart local v6       #userData:[B
    array-length v7, p3

    invoke-static {p3, v9, v6, v9, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1944
    array-length v7, p3

    array-length v8, v4

    invoke-static {v4, v9, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1949
    :goto_4b
    array-length v7, v6

    const/16 v8, 0x8c

    if-le v7, v8, :cond_5f

    move-object v7, v10

    .line 1951
    goto :goto_7

    .line 1933
    .end local v4           #textPart:[B
    .end local v6           #userData:[B
    :catch_52
    move-exception v7

    move-object v5, v7

    .line 1934
    .local v5, uex:Ljava/io/UnsupportedEncodingException;
    const-string v7, "Gsm/SmsMessage"

    const-string v8, "Implausible UnsupportedEncodingException "

    invoke-static {v7, v8, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v7, v10

    .line 1937
    goto :goto_7

    .line 1946
    .end local v5           #uex:Ljava/io/UnsupportedEncodingException;
    .restart local v4       #textPart:[B
    :cond_5d
    move-object v6, v4

    .restart local v6       #userData:[B
    goto :goto_4b

    .line 1956
    :cond_5f
    const/16 v7, 0x8

    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1959
    array-length v7, v6

    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1961
    array-length v7, v6

    invoke-virtual {v0, v6, v9, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_2a
.end method

.method private static getSimSubmitPduHead(Ljava/lang/String;Ljava/lang/String;BLcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;)Ljava/io/ByteArrayOutputStream;
    .registers 11
    .parameter "scAddress"
    .parameter "Address"
    .parameter "mtiByte"
    .parameter "ret"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1847
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0xb4

    invoke-direct {v0, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 1851
    .local v0, bo:Ljava/io/ByteArrayOutputStream;
    if-nez p0, :cond_33

    .line 1852
    const/4 v2, 0x0

    iput-object v2, p3, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedScAddress:[B

    .line 1858
    :goto_e
    invoke-virtual {v0, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1861
    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1865
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v1

    .line 1869
    .local v1, daBytes:[B
    array-length v2, v1

    sub-int/2addr v2, v6

    mul-int/lit8 v2, v2, 0x2

    array-length v3, v1

    sub-int/2addr v3, v6

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xf0

    const/16 v4, 0xf0

    if-ne v3, v4, :cond_3a

    move v3, v6

    :goto_27
    sub-int/2addr v2, v3

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1874
    array-length v2, v1

    invoke-virtual {v0, v1, v5, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1877
    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1879
    return-object v0

    .line 1854
    .end local v1           #daBytes:[B
    :cond_33
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCDWithLength(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, p3, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedScAddress:[B

    goto :goto_e

    .restart local v1       #daBytes:[B
    :cond_3a
    move v3, v5

    .line 1869
    goto :goto_27
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;I[BZ)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .registers 14
    .parameter "scAddress"
    .parameter "destinationAddress"
    .parameter "destinationPort"
    .parameter "data"
    .parameter "statusReportRequested"

    .prologue
    const/16 v8, 0x8c

    const/4 v7, 0x0

    .line 665
    new-instance v1, Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    invoke-direct {v1}, Lcom/android/internal/telephony/SmsHeader$PortAddrs;-><init>()V

    .line 666
    .local v1, portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;
    iput p2, v1, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    .line 667
    iput v7, v1, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->origPort:I

    .line 668
    iput-boolean v7, v1, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->areEightBits:Z

    .line 670
    new-instance v3, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct {v3}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .line 671
    .local v3, smsHeader:Lcom/android/internal/telephony/SmsHeader;
    iput-object v1, v3, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    .line 673
    invoke-static {v3}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object v4

    .line 675
    .local v4, smsHeaderData:[B
    array-length v5, p3

    array-length v6, v4

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x1

    if-le v5, v8, :cond_45

    .line 676
    const-string v5, "Gsm/SmsMessage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SMS data message may only contain "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v4

    sub-int v7, v8, v7

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " bytes"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    const/4 v5, 0x0

    .line 704
    :goto_44
    return-object v5

    .line 681
    :cond_45
    new-instance v2, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    invoke-direct {v2}, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;-><init>()V

    .line 682
    .local v2, ret:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    const/16 v5, 0x41

    invoke-static {p0, p1, v5, p4, v2}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPduHead(Ljava/lang/String;Ljava/lang/String;BZLcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;)Ljava/io/ByteArrayOutputStream;

    move-result-object v0

    .line 689
    .local v0, bo:Ljava/io/ByteArrayOutputStream;
    const/4 v5, 0x4

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 694
    array-length v5, p3

    array-length v6, v4

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 697
    array-length v5, v4

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 698
    array-length v5, v4

    invoke-virtual {v0, v4, v7, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 701
    array-length v5, p3

    invoke-virtual {v0, p3, v7, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 703
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    iput-object v5, v2, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedMessage:[B

    move-object v5, v2

    .line 704
    goto :goto_44
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .registers 5
    .parameter "scAddress"
    .parameter "destinationAddress"
    .parameter "message"
    .parameter "statusReportRequested"

    .prologue
    .line 633
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[B)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v0

    return-object v0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .registers 17
    .parameter "scAddress"
    .parameter "destinationAddress"
    .parameter "message"
    .parameter "statusReportRequested"
    .parameter "replyPath"
    .parameter "expiry"
    .parameter "serviceType"
    .parameter "encodingType"

    .prologue
    .line 644
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v5, p4

    move v6, p5

    move v7, p6

    move/from16 v8, p7

    invoke-static/range {v0 .. v8}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BZIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object p0

    .end local p0
    return-object p0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[B)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .registers 11
    .parameter "scAddress"
    .parameter "destinationAddress"
    .parameter "message"
    .parameter "statusReportRequested"
    .parameter "header"

    .prologue
    .line 302
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BI)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v0

    return-object v0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BI)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .registers 9
    .parameter "scAddress"
    .parameter "destinationAddress"
    .parameter "message"
    .parameter "statusReportRequested"
    .parameter "header"
    .parameter "encoding"

    .prologue
    .line 341
    if-eqz p2, :cond_4

    if-nez p1, :cond_6

    .line 342
    :cond_4
    const/4 p0, 0x0

    .line 421
    .end local p0
    .end local p1
    .end local p2
    .end local p3
    :goto_5
    return-object p0

    .line 345
    .restart local p0
    .restart local p1
    .restart local p2
    .restart local p3
    :cond_6
    new-instance v2, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    invoke-direct {v2}, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;-><init>()V

    .line 347
    .local v2, ret:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    if-eqz p4, :cond_37

    const/16 v0, 0x40

    :goto_f
    or-int/lit8 v0, v0, 0x1

    int-to-byte v1, v0

    .line 349
    .local v1, mtiByte:B
    const/4 v0, 0x0

    .line 350
    .local v0, bo:Ljava/io/ByteArrayOutputStream;
    const-string v0, "121"

    .end local v0           #bo:Ljava/io/ByteArrayOutputStream;
    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_39

    .line 352
    invoke-static {p0, p1, v1, p3, v2}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPduHeadforEmail(Ljava/lang/String;Ljava/lang/String;BZLcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;)Ljava/io/ByteArrayOutputStream;

    move-result-object p0

    .line 363
    .local p0, bo:Ljava/io/ByteArrayOutputStream;
    :goto_1f
    if-nez p5, :cond_22

    .line 365
    const/4 p5, 0x1

    .line 368
    :cond_22
    const/4 p1, 0x1

    if-ne p5, p1, :cond_3e

    .line 369
    .end local p1
    :try_start_25
    invoke-static {p2, p4}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPackedWithHeader(Ljava/lang/String;[B)[B
    :try_end_28
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_25 .. :try_end_28} :catch_4d

    move-result-object p1

    .line 394
    .end local p3
    .local p1, userData:[B
    :goto_29
    const/4 p2, 0x1

    if-ne p5, p2, :cond_6f

    .line 395
    .end local p2
    const/4 p2, 0x0

    aget-byte p2, p1, p2

    and-int/lit16 p2, p2, 0xff

    const/16 p3, 0xa0

    if-le p2, p3, :cond_5e

    .line 397
    const/4 p0, 0x0

    goto :goto_5

    .line 347
    .end local v1           #mtiByte:B
    .local p0, scAddress:Ljava/lang/String;
    .local p1, destinationAddress:Ljava/lang/String;
    .restart local p2
    .restart local p3
    :cond_37
    const/4 v0, 0x0

    goto :goto_f

    .line 356
    .restart local v1       #mtiByte:B
    :cond_39
    invoke-static {p0, p1, v1, p3, v2}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPduHead(Ljava/lang/String;Ljava/lang/String;BZLcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;)Ljava/io/ByteArrayOutputStream;

    move-result-object p0

    .local p0, bo:Ljava/io/ByteArrayOutputStream;
    goto :goto_1f

    .line 372
    .end local p1           #destinationAddress:Ljava/lang/String;
    :cond_3e
    :try_start_3e
    invoke-static {p2, p4}, Lcom/android/internal/telephony/gsm/SmsMessage;->encodeUCS2(Ljava/lang/String;[B)[B
    :try_end_41
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3e .. :try_end_41} :catch_43
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_3e .. :try_end_41} :catch_4d

    move-result-object p1

    .local p1, userData:[B
    goto :goto_29

    .line 373
    .end local p1           #userData:[B
    :catch_43
    move-exception p1

    .line 374
    .local p1, uex:Ljava/io/UnsupportedEncodingException;
    :try_start_44
    const-string p3, "Gsm/SmsMessage"

    .end local p3
    const-string v0, "Implausible UnsupportedEncodingException "

    invoke-static {p3, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4b
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_44 .. :try_end_4b} :catch_4d

    .line 377
    const/4 p0, 0x0

    goto :goto_5

    .line 380
    .end local p1           #uex:Ljava/io/UnsupportedEncodingException;
    :catch_4d
    move-exception p1

    .line 384
    .local p1, ex:Lcom/android/internal/telephony/EncodeException;
    :try_start_4e
    invoke-static {p2, p4}, Lcom/android/internal/telephony/gsm/SmsMessage;->encodeUCS2(Ljava/lang/String;[B)[B
    :try_end_51
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4e .. :try_end_51} :catch_54

    move-result-object p1

    .line 385
    .local p1, userData:[B
    const/4 p5, 0x3

    goto :goto_29

    .line 386
    .local p1, ex:Lcom/android/internal/telephony/EncodeException;
    :catch_54
    move-exception p0

    .line 387
    .local p0, uex:Ljava/io/UnsupportedEncodingException;
    const-string p1, "Gsm/SmsMessage"

    .end local p1           #ex:Lcom/android/internal/telephony/EncodeException;
    const-string p2, "Implausible UnsupportedEncodingException "

    .end local p2
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 390
    const/4 p0, 0x0

    goto :goto_5

    .line 407
    .local p0, bo:Ljava/io/ByteArrayOutputStream;
    .local p1, userData:[B
    :cond_5e
    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 419
    :goto_62
    const/4 p2, 0x0

    array-length p3, p1

    invoke-virtual {p0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 420
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    .end local p0           #bo:Ljava/io/ByteArrayOutputStream;
    iput-object p0, v2, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedMessage:[B

    move-object p0, v2

    .line 421
    goto :goto_5

    .line 409
    .restart local p0       #bo:Ljava/io/ByteArrayOutputStream;
    :cond_6f
    const/4 p2, 0x0

    aget-byte p2, p1, p2

    and-int/lit16 p2, p2, 0xff

    const/16 p3, 0x8c

    if-le p2, p3, :cond_7a

    .line 411
    const/4 p0, 0x0

    goto :goto_5

    .line 415
    :cond_7a
    const/16 p2, 0x8

    invoke-virtual {p0, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_62
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BZIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .registers 12
    .parameter "scAddress"
    .parameter "destinationAddress"
    .parameter "message"
    .parameter "statusReportRequested"
    .parameter "header"
    .parameter "replyPath"
    .parameter "expiry"
    .parameter "serviceType"
    .parameter "encodingType"

    .prologue
    .line 470
    const-string p7, "Gsm/SmsMessage"

    .end local p7
    const-string v0, "getSubmitPdu with Options"

    invoke-static {p7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    if-eqz p2, :cond_b

    if-nez p1, :cond_d

    .line 473
    :cond_b
    const/4 p0, 0x0

    .line 588
    .end local p0
    .end local p1
    .end local p2
    .end local p3
    .end local p4
    .end local p5
    :goto_c
    return-object p0

    .line 475
    .restart local p0
    .restart local p1
    .restart local p2
    .restart local p3
    .restart local p4
    .restart local p5
    :cond_d
    const-string p7, "Gsm/SmsMessage"

    const-string v0, "**getSubmitPdu_Options**"

    invoke-static {p7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    const-string p7, "Gsm/SmsMessage"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "replyPath = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    const-string p7, "Gsm/SmsMessage"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "encodingType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    const-string p7, "Gsm/SmsMessage"

    const-string v0, "**********************"

    invoke-static {p7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    new-instance v0, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    invoke-direct {v0}, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;-><init>()V

    .line 482
    .local v0, ret:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    if-eqz p4, :cond_dc

    const/16 p7, 0x40

    :goto_55
    or-int/lit8 p7, p7, 0x1

    int-to-byte p7, p7

    .line 483
    .local p7, mtiByte:B
    if-eqz p5, :cond_163

    .line 485
    or-int/lit16 p5, p7, 0x80

    int-to-byte p5, p5

    .line 486
    .end local p7           #mtiByte:B
    .local p5, mtiByte:B
    const-string p7, "Gsm/SmsMessage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mtiByte = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    :goto_76
    const/16 p7, 0xff

    if-eq p6, p7, :cond_160

    .line 490
    or-int/lit8 p5, p5, 0x10

    int-to-byte p5, p5

    .line 491
    const-string p7, "Gsm/SmsMessage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mtiByte = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move p7, p5

    .line 494
    .end local p5           #mtiByte:B
    .restart local p7       #mtiByte:B
    :goto_97
    const/4 p5, 0x0

    .line 495
    .local p5, bo:Ljava/io/ByteArrayOutputStream;
    const-string p5, "121"

    .end local p5           #bo:Ljava/io/ByteArrayOutputStream;
    invoke-virtual {p1, p5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p5

    if-nez p5, :cond_df

    .line 497
    invoke-static {p0, p1, p7, p3, v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPduHeadforEmail(Ljava/lang/String;Ljava/lang/String;BZLcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;)Ljava/io/ByteArrayOutputStream;

    move-result-object p0

    .line 508
    .local p0, bo:Ljava/io/ByteArrayOutputStream;
    :goto_a4
    const/4 p1, 0x1

    if-ne p8, p1, :cond_e4

    .line 510
    .end local p1
    :try_start_a7
    new-instance p1, Lcom/android/internal/telephony/EncodeException;

    const-string p3, "Input Method is Unicode"

    .end local p3
    invoke-direct {p1, p3}, Lcom/android/internal/telephony/EncodeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_af
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_a7 .. :try_end_af} :catch_af

    .line 540
    .end local p7           #mtiByte:B
    :catch_af
    move-exception p1

    .line 546
    .local p1, ex:Lcom/android/internal/telephony/EncodeException;
    :try_start_b0
    const-string/jumbo p1, "utf-16be"

    .end local p1           #ex:Lcom/android/internal/telephony/EncodeException;
    invoke-virtual {p2, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_b6
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_b0 .. :try_end_b6} :catch_125

    move-result-object p1

    .line 554
    .local p1, textPart:[B
    if-eqz p4, :cond_130

    .line 556
    array-length p2, p4

    .end local p2
    array-length p3, p1

    add-int/2addr p2, p3

    add-int/lit8 p2, p2, 0x1

    new-array p2, p2, [B

    .line 558
    .local p2, userData:[B
    const/4 p3, 0x0

    array-length p5, p4

    int-to-byte p5, p5

    aput-byte p5, p2, p3

    .line 559
    const/4 p3, 0x0

    const/4 p5, 0x1

    array-length p7, p4

    invoke-static {p4, p3, p2, p5, p7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 560
    const/4 p3, 0x0

    array-length p4, p4

    .end local p4
    add-int/lit8 p4, p4, 0x1

    array-length p5, p1

    invoke-static {p1, p3, p2, p4, p5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p1, p2

    .line 566
    .end local p2           #userData:[B
    .local p1, userData:[B
    :goto_d4
    array-length p2, p1

    const/16 p3, 0x8c

    if-le p2, p3, :cond_132

    .line 568
    const/4 p0, 0x0

    goto/16 :goto_c

    .line 482
    .local p0, scAddress:Ljava/lang/String;
    .local p1, destinationAddress:Ljava/lang/String;
    .local p2, message:Ljava/lang/String;
    .restart local p3
    .restart local p4
    .local p5, replyPath:Z
    :cond_dc
    const/4 p7, 0x0

    goto/16 :goto_55

    .line 501
    .end local p5           #replyPath:Z
    .restart local p7       #mtiByte:B
    :cond_df
    invoke-static {p0, p1, p7, p3, v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPduHead(Ljava/lang/String;Ljava/lang/String;BZLcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;)Ljava/io/ByteArrayOutputStream;

    move-result-object p0

    .local p0, bo:Ljava/io/ByteArrayOutputStream;
    goto :goto_a4

    .line 515
    .end local p1           #destinationAddress:Ljava/lang/String;
    :cond_e4
    :try_start_e4
    invoke-static {p2, p4}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPackedWithHeader(Ljava/lang/String;[B)[B

    move-result-object p1

    .line 517
    .local p1, userData:[B
    const/4 p3, 0x0

    aget-byte p3, p1, p3

    .end local p3
    and-int/lit16 p3, p3, 0xff

    const/16 p5, 0xa0

    if-le p3, p5, :cond_f4

    .line 519
    const/4 p0, 0x0

    goto/16 :goto_c

    .line 530
    :cond_f4
    const/4 p3, 0x0

    invoke-virtual {p0, p3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 533
    const/16 p3, 0xff

    if-eq p6, p3, :cond_117

    .line 535
    invoke-virtual {p0, p6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 536
    const-string p3, "Gsm/SmsMessage"

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string p7, "expirty = "

    .end local p7           #mtiByte:B
    invoke-virtual {p5, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {p3, p5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    :cond_117
    const/4 p3, 0x0

    array-length p5, p1

    invoke-virtual {p0, p1, p3, p5}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_11c
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_e4 .. :try_end_11c} :catch_af

    .line 587
    .end local p2           #message:Ljava/lang/String;
    .end local p4
    :goto_11c
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    .end local p0           #bo:Ljava/io/ByteArrayOutputStream;
    iput-object p0, v0, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedMessage:[B

    move-object p0, v0

    .line 588
    goto/16 :goto_c

    .line 547
    .end local p1           #userData:[B
    .restart local p0       #bo:Ljava/io/ByteArrayOutputStream;
    .restart local p2       #message:Ljava/lang/String;
    .restart local p4
    :catch_125
    move-exception p0

    .line 548
    .local p0, uex:Ljava/io/UnsupportedEncodingException;
    const-string p1, "Gsm/SmsMessage"

    const-string p2, "Implausible UnsupportedEncodingException "

    .end local p2           #message:Ljava/lang/String;
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 551
    const/4 p0, 0x0

    goto/16 :goto_c

    .line 563
    .local p0, bo:Ljava/io/ByteArrayOutputStream;
    .local p1, textPart:[B
    .restart local p2       #message:Ljava/lang/String;
    :cond_130
    move-object p1, p1

    .local p1, userData:[B
    goto :goto_d4

    .line 573
    .end local p2           #message:Ljava/lang/String;
    .end local p4
    :cond_132
    const/16 p2, 0x8

    invoke-virtual {p0, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 576
    const/16 p2, 0xff

    if-eq p6, p2, :cond_156

    .line 578
    invoke-virtual {p0, p6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 579
    const-string p2, "Gsm/SmsMessage"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "expirty = "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    :cond_156
    array-length p2, p1

    invoke-virtual {p0, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 584
    const/4 p2, 0x0

    array-length p3, p1

    invoke-virtual {p0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_11c

    .local p0, scAddress:Ljava/lang/String;
    .local p1, destinationAddress:Ljava/lang/String;
    .restart local p2       #message:Ljava/lang/String;
    .restart local p3
    .restart local p4
    .local p5, mtiByte:B
    :cond_160
    move p7, p5

    .end local p5           #mtiByte:B
    .restart local p7       #mtiByte:B
    goto/16 :goto_97

    .local p5, replyPath:Z
    :cond_163
    move p5, p7

    .end local p7           #mtiByte:B
    .local p5, mtiByte:B
    goto/16 :goto_76
.end method

.method private static getSubmitPduHead(Ljava/lang/String;Ljava/lang/String;BZLcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;)Ljava/io/ByteArrayOutputStream;
    .registers 12
    .parameter "scAddress"
    .parameter "destinationAddress"
    .parameter "mtiByte"
    .parameter "statusReportRequested"
    .parameter "ret"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 722
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0xb4

    invoke-direct {v0, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 726
    .local v0, bo:Ljava/io/ByteArrayOutputStream;
    if-nez p0, :cond_3f

    .line 727
    const/4 v2, 0x0

    iput-object v2, p4, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedScAddress:[B

    .line 734
    :goto_e
    if-eqz p3, :cond_1a

    .line 736
    or-int/lit8 v2, p2, 0x20

    int-to-byte p2, v2

    .line 737
    const-string v2, "Gsm/SmsMessage"

    const-string v3, "SMS status report requested"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    :cond_1a
    invoke-virtual {v0, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 742
    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 749
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v1

    .line 753
    .local v1, daBytes:[B
    array-length v2, v1

    sub-int/2addr v2, v6

    mul-int/lit8 v2, v2, 0x2

    array-length v3, v1

    sub-int/2addr v3, v6

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xf0

    const/16 v4, 0xf0

    if-ne v3, v4, :cond_46

    move v3, v6

    :goto_33
    sub-int/2addr v2, v3

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 757
    array-length v2, v1

    invoke-virtual {v0, v1, v5, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 760
    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 761
    return-object v0

    .line 729
    .end local v1           #daBytes:[B
    :cond_3f
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCDWithLength(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, p4, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedScAddress:[B

    goto :goto_e

    .restart local v1       #daBytes:[B
    :cond_46
    move v3, v5

    .line 753
    goto :goto_33
.end method

.method private static getSubmitPduHeadforEmail(Ljava/lang/String;Ljava/lang/String;BZLcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;)Ljava/io/ByteArrayOutputStream;
    .registers 12
    .parameter "scAddress"
    .parameter "destinationAddress"
    .parameter "mtiByte"
    .parameter "statusReportRequested"
    .parameter "ret"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 780
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0xb4

    invoke-direct {v0, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 784
    .local v0, bo:Ljava/io/ByteArrayOutputStream;
    if-nez p0, :cond_41

    .line 785
    const/4 v2, 0x0

    iput-object v2, p4, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedScAddress:[B

    .line 792
    :goto_e
    if-eqz p3, :cond_1a

    .line 794
    or-int/lit8 v2, p2, 0x20

    int-to-byte p2, v2

    .line 795
    const-string v2, "Gsm/SmsMessage"

    const-string v3, "SMS status report requested"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    :cond_1a
    invoke-virtual {v0, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 800
    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 805
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v1

    .line 809
    .local v1, daBytes:[B
    array-length v2, v1

    sub-int/2addr v2, v6

    mul-int/lit8 v2, v2, 0x2

    array-length v3, v1

    sub-int/2addr v3, v6

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xf0

    const/16 v4, 0xf0

    if-ne v3, v4, :cond_48

    move v3, v6

    :goto_33
    sub-int/2addr v2, v3

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 813
    array-length v2, v1

    invoke-virtual {v0, v1, v5, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 816
    const/16 v2, 0x32

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 817
    return-object v0

    .line 787
    .end local v1           #daBytes:[B
    :cond_41
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCDWithLength(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, p4, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedScAddress:[B

    goto :goto_e

    .restart local v1       #daBytes:[B
    :cond_48
    move v3, v5

    .line 809
    goto :goto_33
.end method

.method public static getTPLayerLengthForPDU(Ljava/lang/String;)I
    .registers 5
    .parameter "pdu"

    .prologue
    .line 282
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    div-int/lit8 v0, v2, 0x2

    .line 283
    .local v0, len:I
    const/4 v1, 0x0

    .line 285
    .local v1, smscLen:I
    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .line 287
    sub-int v2, v0, v1

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    return v2
.end method

.method public static newFromCDS(Ljava/lang/String;)Lcom/android/internal/telephony/gsm/SmsMessage;
    .registers 5
    .parameter "line"

    .prologue
    .line 215
    :try_start_0
    new-instance v1, Lcom/android/internal/telephony/gsm/SmsMessage;

    invoke-direct {v1}, Lcom/android/internal/telephony/gsm/SmsMessage;-><init>()V

    .line 216
    .local v1, msg:Lcom/android/internal/telephony/gsm/SmsMessage;
    invoke-static {p0}, Lcom/android/internal/telephony/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/gsm/SmsMessage;->parsePdu([B)V
    :try_end_c
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_c} :catch_e

    move-object v2, v1

    .line 220
    .end local v1           #msg:Lcom/android/internal/telephony/gsm/SmsMessage;
    :goto_d
    return-object v2

    .line 218
    :catch_e
    move-exception v2

    move-object v0, v2

    .line 219
    .local v0, ex:Ljava/lang/RuntimeException;
    const-string v2, "Gsm/SmsMessage"

    const-string v3, "CDS SMS PDU parsing failed: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 220
    const/4 v2, 0x0

    goto :goto_d
.end method

.method public static newFromCMT([Ljava/lang/String;)Lcom/android/internal/telephony/gsm/SmsMessage;
    .registers 5
    .parameter "lines"

    .prologue
    .line 195
    :try_start_0
    new-instance v1, Lcom/android/internal/telephony/gsm/SmsMessage;

    invoke-direct {v1}, Lcom/android/internal/telephony/gsm/SmsMessage;-><init>()V

    .line 196
    .local v1, msg:Lcom/android/internal/telephony/gsm/SmsMessage;
    const/4 v2, 0x1

    aget-object v2, p0, v2

    invoke-static {v2}, Lcom/android/internal/telephony/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/gsm/SmsMessage;->parsePdu([B)V
    :try_end_f
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_f} :catch_11

    move-object v2, v1

    .line 200
    .end local v1           #msg:Lcom/android/internal/telephony/gsm/SmsMessage;
    :goto_10
    return-object v2

    .line 198
    :catch_11
    move-exception v2

    move-object v0, v2

    .line 199
    .local v0, ex:Ljava/lang/RuntimeException;
    const-string v2, "Gsm/SmsMessage"

    const-string v3, "SMS PDU parsing failed: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 200
    const/4 v2, 0x0

    goto :goto_10
.end method

.method public static newFromCMTI(Ljava/lang/String;)Lcom/android/internal/telephony/gsm/SmsMessage;
    .registers 3
    .parameter "line"

    .prologue
    .line 208
    const-string v0, "Gsm/SmsMessage"

    const-string/jumbo v1, "newFromCMTI: not yet supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    const/4 v0, 0x0

    return-object v0
.end method

.method public static newFromParcel(Landroid/os/Parcel;)Lcom/android/internal/telephony/SmsMessageBase;
    .registers 3
    .parameter "p"

    .prologue
    .line 229
    const-string v0, "Gsm/SmsMessage"

    const-string/jumbo v1, "newFromParcel: is not supported in GSM mode."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    const/4 v0, 0x0

    return-object v0
.end method

.method private parsePdu([B)V
    .registers 7
    .parameter "pdu"

    .prologue
    .line 1466
    iput-object p1, p0, Lcom/android/internal/telephony/SmsMessageBase;->mPdu:[B

    .line 1470
    new-instance v1, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;

    invoke-direct {v1, p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;-><init>([B)V

    .line 1472
    .local v1, p:Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getSCAddress()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/SmsMessageBase;->scAddress:Ljava/lang/String;

    .line 1474
    iget-object v2, p0, Lcom/android/internal/telephony/SmsMessageBase;->scAddress:Ljava/lang/String;

    if-eqz v2, :cond_2b

    .line 1475
    const-string v2, "Gsm/SmsMessage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SMS SC address: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/SmsMessageBase;->scAddress:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1482
    :cond_2b
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v0

    .line 1484
    .local v0, firstByte:I
    and-int/lit8 v2, v0, 0x3

    iput v2, p0, Lcom/android/internal/telephony/SmsMessageBase;->mti:I

    .line 1485
    iget v2, p0, Lcom/android/internal/telephony/SmsMessageBase;->mti:I

    packed-switch v2, :pswitch_data_4c

    .line 1501
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Unsupported message type"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1489
    :pswitch_40
    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseSmsDeliver(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;I)V

    .line 1503
    :goto_43
    return-void

    .line 1493
    :pswitch_44
    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseSmsSubmit(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;I)V

    goto :goto_43

    .line 1497
    :pswitch_48
    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseSmsStatusReport(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;I)V

    goto :goto_43

    .line 1485
    :pswitch_data_4c
    .packed-switch 0x0
        :pswitch_40
        :pswitch_44
        :pswitch_48
    .end packed-switch
.end method

.method private parseSmsDeliver(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;I)V
    .registers 10
    .parameter "p"
    .parameter "firstByte"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v6, "Gsm/SmsMessage"

    .line 1597
    and-int/lit16 v1, p2, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_6b

    move v1, v5

    :goto_b
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->replyPathPresent:Z

    .line 1599
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getAddress()Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/SmsMessageBase;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    .line 1601
    iget-object v1, p0, Lcom/android/internal/telephony/SmsMessageBase;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    if-eqz v1, :cond_17

    .line 1606
    :cond_17
    const-string v1, "Gsm/SmsMessage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "originatingAddress.address : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/SmsMessageBase;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    iget-object v2, v2, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1610
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->protocolIdentifier:I

    .line 1614
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    .line 1621
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getSCTimestampMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/internal/telephony/SmsMessageBase;->scTimeMillis:J

    .line 1623
    const-string v1, "Gsm/SmsMessage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SMS SC timestamp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/internal/telephony/SmsMessageBase;->scTimeMillis:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1625
    and-int/lit8 v1, p2, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_6d

    move v0, v5

    .line 1627
    .local v0, hasUserDataHeader:Z
    :goto_67
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseUserData(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;Z)V

    .line 1628
    return-void

    .end local v0           #hasUserDataHeader:Z
    :cond_6b
    move v1, v4

    .line 1597
    goto :goto_b

    :cond_6d
    move v0, v4

    .line 1625
    goto :goto_67
.end method

.method private parseSmsStatusReport(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;I)V
    .registers 10
    .parameter "p"
    .parameter "firstByte"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1512
    iput-boolean v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->isStatusReportMessage:Z

    .line 1515
    and-int/lit8 v3, p2, 0x20

    if-nez v3, :cond_3d

    move v3, v5

    :goto_9
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->forSubmit:Z

    .line 1517
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/SmsMessageBase;->messageRef:I

    .line 1519
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getAddress()Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/SmsMessageBase;->recipientAddress:Lcom/android/internal/telephony/SmsAddress;

    .line 1521
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getSCTimestampMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/internal/telephony/SmsMessageBase;->scTimeMillis:J

    .line 1523
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getSCTimestampMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dischargeTimeMillis:J

    .line 1525
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->status:I

    .line 1528
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->moreDataPresent()Z

    move-result v3

    if-eqz v3, :cond_61

    .line 1530
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v0

    .line 1531
    .local v0, extraParams:I
    move v2, v0

    .line 1532
    .local v2, moreExtraParams:I
    :goto_34
    and-int/lit16 v3, v2, 0x80

    if-eqz v3, :cond_3f

    .line 1536
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v2

    goto :goto_34

    .end local v0           #extraParams:I
    .end local v2           #moreExtraParams:I
    :cond_3d
    move v3, v6

    .line 1515
    goto :goto_9

    .line 1539
    .restart local v0       #extraParams:I
    .restart local v2       #moreExtraParams:I
    :cond_3f
    and-int/lit8 v3, v0, 0x1

    if-eqz v3, :cond_49

    .line 1540
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->protocolIdentifier:I

    .line 1543
    :cond_49
    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_53

    .line 1544
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    .line 1547
    :cond_53
    and-int/lit8 v3, v0, 0x4

    if-eqz v3, :cond_61

    .line 1548
    and-int/lit8 v3, p2, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_62

    move v1, v5

    .line 1549
    .local v1, hasUserDataHeader:Z
    :goto_5e
    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseUserData(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;Z)V

    .line 1552
    .end local v0           #extraParams:I
    .end local v1           #hasUserDataHeader:Z
    .end local v2           #moreExtraParams:I
    :cond_61
    return-void

    .restart local v0       #extraParams:I
    .restart local v2       #moreExtraParams:I
    :cond_62
    move v1, v6

    .line 1548
    goto :goto_5e
.end method

.method private parseSmsSubmit(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;I)V
    .registers 9
    .parameter "p"
    .parameter "firstByte"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1556
    and-int/lit16 v1, p2, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_55

    move v1, v5

    :goto_9
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->replyPathPresent:Z

    .line 1559
    shr-int/lit8 v1, p2, 0x3

    and-int/lit8 v1, v1, 0x3

    iput v1, p1, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->validityPeriodFormat:I

    .line 1562
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/SmsMessageBase;->messageRef:I

    .line 1565
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getAddress()Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/SmsMessageBase;->recipientAddress:Lcom/android/internal/telephony/SmsAddress;

    .line 1567
    const-string v1, "Gsm/SmsMessage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "recipientAddress.address : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/SmsMessageBase;->recipientAddress:Lcom/android/internal/telephony/SmsAddress;

    iget-object v3, v3, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1569
    iget-object v1, p0, Lcom/android/internal/telephony/SmsMessageBase;->recipientAddress:Lcom/android/internal/telephony/SmsAddress;

    if-eqz v1, :cond_3e

    .line 1576
    :cond_3e
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->protocolIdentifier:I

    .line 1581
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    .line 1590
    and-int/lit8 v1, p2, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_57

    move v0, v5

    .line 1592
    .local v0, hasUserDataHeader:Z
    :goto_51
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseUserData(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;Z)V

    .line 1594
    return-void

    .end local v0           #hasUserDataHeader:Z
    :cond_55
    move v1, v4

    .line 1556
    goto :goto_9

    :cond_57
    move v0, v4

    .line 1590
    goto :goto_51
.end method

.method private parseUserData(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;Z)V
    .registers 16
    .parameter "p"
    .parameter "hasUserDataHeader"

    .prologue
    const/16 v12, 0xc0

    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string v11, "[CJ]"

    const-string v10, "Gsm/SmsMessage"

    .line 1638
    const/4 v3, 0x0

    .line 1639
    .local v3, hasMessageClass:Z
    const/4 v5, 0x0

    .line 1641
    .local v5, userDataCompressed:Z
    const/4 v2, 0x0

    .line 1646
    .local v2, encodingType:I
    const/4 v4, 0x0

    .line 1647
    .local v4, isChangedmwiSense:Z
    iput-boolean v8, p0, Lcom/android/internal/telephony/SmsMessageBase;->isMwi:Z

    .line 1648
    iput-boolean v8, p0, Lcom/android/internal/telephony/SmsMessageBase;->mwiSense:Z

    .line 1649
    iput-boolean v9, p0, Lcom/android/internal/telephony/SmsMessageBase;->mwiDontStore:Z

    .line 1650
    const/16 v6, 0xff

    iput v6, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->numberOfMessages:I

    .line 1651
    iget-object v6, p0, Lcom/android/internal/telephony/SmsMessageBase;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    sput-boolean v8, Lcom/android/internal/telephony/SmsHeader;->udhi_isMwi:Z

    .line 1656
    iget v6, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit16 v6, v6, 0x84

    const/16 v7, 0x84

    if-ne v6, v7, :cond_118

    .line 1657
    const/4 v2, 0x4

    .line 1751
    :goto_23
    const-string v6, "Gsm/SmsMessage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "hasUserDataHeader : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v10, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1754
    if-ne v2, v9, :cond_255

    move v6, v9

    :goto_3e
    invoke-virtual {p1, p2, v6}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->constructUserData(ZZ)I

    move-result v1

    .line 1756
    .local v1, count:I
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getUserData()[B

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/telephony/SmsMessageBase;->userData:[B

    .line 1757
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/telephony/SmsMessageBase;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    .line 1761
    if-eqz p2, :cond_d8

    iget-object v6, p0, Lcom/android/internal/telephony/SmsMessageBase;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    sget-boolean v6, Lcom/android/internal/telephony/SmsHeader;->udhi_isMwi:Z

    if-eqz v6, :cond_d8

    .line 1763
    iget-object v6, p0, Lcom/android/internal/telephony/SmsMessageBase;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    sget-boolean v6, Lcom/android/internal/telephony/SmsHeader;->udhi_isMwi:Z

    iput-boolean v6, p0, Lcom/android/internal/telephony/SmsMessageBase;->isMwi:Z

    .line 1764
    if-nez v4, :cond_60

    .line 1765
    iput-boolean v9, p0, Lcom/android/internal/telephony/SmsMessageBase;->mwiSense:Z

    .line 1767
    :cond_60
    iget-object v6, p0, Lcom/android/internal/telephony/SmsMessageBase;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    sget-boolean v6, Lcom/android/internal/telephony/SmsHeader;->udhi_mwiDontStore:Z

    iput-boolean v6, p0, Lcom/android/internal/telephony/SmsMessageBase;->mwiDontStore:Z

    .line 1768
    iget-object v6, p0, Lcom/android/internal/telephony/SmsMessageBase;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    sget v6, Lcom/android/internal/telephony/SmsHeader;->udhi_voicemailcount:I

    iput v6, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->numberOfMessages:I

    .line 1769
    const-string v6, "[CJ]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mwisettings: isMwi = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/internal/telephony/SmsMessageBase;->isMwi:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v11, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1770
    const-string v6, "[CJ]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mwisettings: mwiSense = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/internal/telephony/SmsMessageBase;->mwiSense:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v11, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1771
    const-string v6, "[CJ]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mwisettings: mwiDontStore = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/internal/telephony/SmsMessageBase;->mwiDontStore:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v11, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1772
    const-string v6, "[CJ]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mwisettings: numberOfMessages = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->numberOfMessages:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v11, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1776
    :cond_d8
    packed-switch v2, :pswitch_data_296

    .line 1797
    :goto_db
    const-string v6, "Gsm/SmsMessage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "messageBody : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/SmsMessageBase;->messageBody:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v10, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1799
    iget-object v6, p0, Lcom/android/internal/telephony/SmsMessageBase;->messageBody:Ljava/lang/String;

    if-eqz v6, :cond_111

    .line 1801
    iget-object v6, p0, Lcom/android/internal/telephony/SmsMessageBase;->messageBody:Ljava/lang/String;

    const-string v7, "\r\n"

    const-string v8, "\n"

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0xd

    const/16 v8, 0xa

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/telephony/SmsMessageBase;->messageBody:Ljava/lang/String;

    .line 1802
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseMessageBody()V

    .line 1805
    :cond_111
    if-nez v3, :cond_275

    .line 1806
    sget-object v6, Landroid/telephony/SmsMessage$MessageClass;->UNKNOWN:Landroid/telephony/SmsMessage$MessageClass;

    iput-object v6, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Landroid/telephony/SmsMessage$MessageClass;

    .line 1823
    :goto_117
    return-void

    .line 1658
    .end local v1           #count:I
    :cond_118
    iget v6, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit16 v6, v6, 0x80

    if-nez v6, :cond_1b4

    .line 1660
    iget v6, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit8 v6, v6, 0x40

    if-eqz v6, :cond_157

    move v6, v9

    :goto_125
    iput-boolean v6, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->automaticDeletion:Z

    .line 1661
    iget v6, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit8 v6, v6, 0x20

    if-eqz v6, :cond_159

    move v5, v9

    .line 1662
    :goto_12e
    iget v6, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit8 v6, v6, 0x10

    if-eqz v6, :cond_15b

    move v3, v9

    .line 1664
    :goto_135
    if-eqz v5, :cond_15d

    .line 1665
    const-string v6, "Gsm/SmsMessage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "4 - Unsupported SMS data coding scheme (compression) "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit16 v7, v7, 0xff

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v10, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1667
    sput-boolean v9, Lcom/android/internal/telephony/gsm/SmsMessage;->unsupportedDatacodingScheme:Z

    goto/16 :goto_23

    :cond_157
    move v6, v8

    .line 1660
    goto :goto_125

    :cond_159
    move v5, v8

    .line 1661
    goto :goto_12e

    :cond_15b
    move v3, v8

    .line 1662
    goto :goto_135

    .line 1669
    :cond_15d
    iget v6, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    shr-int/lit8 v6, v6, 0x2

    and-int/lit8 v6, v6, 0x3

    packed-switch v6, :pswitch_data_2a4

    goto/16 :goto_23

    .line 1671
    :pswitch_168
    const/4 v2, 0x1

    .line 1672
    sput-boolean v8, Lcom/android/internal/telephony/gsm/SmsMessage;->unsupportedDatacodingScheme:Z

    goto/16 :goto_23

    .line 1676
    :pswitch_16d
    const/4 v2, 0x3

    .line 1677
    sput-boolean v8, Lcom/android/internal/telephony/gsm/SmsMessage;->unsupportedDatacodingScheme:Z

    goto/16 :goto_23

    .line 1681
    :pswitch_172
    const-string v6, "Gsm/SmsMessage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "1 - Unsupported SMS data coding scheme "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit16 v7, v7, 0xff

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v10, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1683
    sput-boolean v9, Lcom/android/internal/telephony/gsm/SmsMessage;->unsupportedDatacodingScheme:Z

    .line 1684
    const/4 v2, 0x2

    .line 1685
    goto/16 :goto_23

    .line 1688
    :pswitch_193
    const-string v6, "Gsm/SmsMessage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "3 - Unsupported SMS data coding scheme "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit16 v7, v7, 0xff

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v10, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1690
    sput-boolean v8, Lcom/android/internal/telephony/gsm/SmsMessage;->unsupportedDatacodingScheme:Z

    .line 1691
    const/4 v2, 0x4

    goto/16 :goto_23

    .line 1696
    :cond_1b4
    iget v6, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit16 v6, v6, 0xf0

    const/16 v7, 0xf0

    if-ne v6, v7, :cond_1ce

    .line 1697
    iput-boolean v8, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->automaticDeletion:Z

    .line 1698
    const/4 v3, 0x1

    .line 1699
    const/4 v5, 0x0

    .line 1700
    sput-boolean v8, Lcom/android/internal/telephony/gsm/SmsMessage;->unsupportedDatacodingScheme:Z

    .line 1702
    iget v6, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit8 v6, v6, 0x4

    if-nez v6, :cond_1cb

    .line 1704
    const/4 v2, 0x1

    goto/16 :goto_23

    .line 1707
    :cond_1cb
    const/4 v2, 0x2

    goto/16 :goto_23

    .line 1709
    :cond_1ce
    iget v6, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit16 v6, v6, 0xf0

    if-eq v6, v12, :cond_1e4

    iget v6, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit16 v6, v6, 0xf0

    const/16 v7, 0xd0

    if-eq v6, v7, :cond_1e4

    iget v6, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit16 v6, v6, 0xf0

    const/16 v7, 0xe0

    if-ne v6, v7, :cond_235

    .line 1718
    :cond_1e4
    sput-boolean v8, Lcom/android/internal/telephony/gsm/SmsMessage;->unsupportedDatacodingScheme:Z

    .line 1720
    iget v6, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit16 v6, v6, 0xf0

    const/16 v7, 0xe0

    if-ne v6, v7, :cond_20f

    .line 1721
    const/4 v2, 0x3

    .line 1726
    :goto_1ef
    const/4 v5, 0x0

    .line 1727
    iget v6, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit8 v6, v6, 0x8

    const/16 v7, 0x8

    if-ne v6, v7, :cond_211

    move v0, v9

    .line 1731
    .local v0, active:Z
    :goto_1f9
    iget v6, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit8 v6, v6, 0x3

    if-nez v6, :cond_215

    .line 1733
    const/4 v4, 0x1

    .line 1735
    iput-boolean v9, p0, Lcom/android/internal/telephony/SmsMessageBase;->isMwi:Z

    .line 1736
    iput-boolean v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mwiSense:Z

    .line 1737
    iget v6, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit16 v6, v6, 0xf0

    if-ne v6, v12, :cond_213

    move v6, v9

    :goto_20b
    iput-boolean v6, p0, Lcom/android/internal/telephony/SmsMessageBase;->mwiDontStore:Z

    goto/16 :goto_23

    .line 1723
    .end local v0           #active:Z
    :cond_20f
    const/4 v2, 0x1

    goto :goto_1ef

    :cond_211
    move v0, v8

    .line 1727
    goto :goto_1f9

    .restart local v0       #active:Z
    :cond_213
    move v6, v8

    .line 1737
    goto :goto_20b

    .line 1739
    :cond_215
    iput-boolean v8, p0, Lcom/android/internal/telephony/SmsMessageBase;->isMwi:Z

    .line 1741
    const-string v6, "Gsm/SmsMessage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MWI for fax, email, or other "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit16 v7, v7, 0xff

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v10, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_23

    .line 1745
    .end local v0           #active:Z
    :cond_235
    const-string v6, "Gsm/SmsMessage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "3 - Unsupported SMS data coding scheme "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit16 v7, v7, 0xff

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v10, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1749
    sput-boolean v9, Lcom/android/internal/telephony/gsm/SmsMessage;->unsupportedDatacodingScheme:Z

    goto/16 :goto_23

    :cond_255
    move v6, v8

    .line 1754
    goto/16 :goto_3e

    .line 1779
    .restart local v1       #count:I
    :pswitch_258
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/internal/telephony/SmsMessageBase;->messageBody:Ljava/lang/String;

    goto/16 :goto_db

    .line 1783
    :pswitch_25d
    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getUserDataGSM7Bit(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/telephony/SmsMessageBase;->messageBody:Ljava/lang/String;

    goto/16 :goto_db

    .line 1787
    :pswitch_265
    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getUserDataUCS2(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/telephony/SmsMessageBase;->messageBody:Ljava/lang/String;

    goto/16 :goto_db

    .line 1791
    :pswitch_26d
    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getUserDataEUC_KR(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/telephony/SmsMessageBase;->messageBody:Ljava/lang/String;

    goto/16 :goto_db

    .line 1808
    :cond_275
    iget v6, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit8 v6, v6, 0x3

    packed-switch v6, :pswitch_data_2b0

    goto/16 :goto_117

    .line 1810
    :pswitch_27e
    sget-object v6, Landroid/telephony/SmsMessage$MessageClass;->CLASS_0:Landroid/telephony/SmsMessage$MessageClass;

    iput-object v6, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Landroid/telephony/SmsMessage$MessageClass;

    goto/16 :goto_117

    .line 1813
    :pswitch_284
    sget-object v6, Landroid/telephony/SmsMessage$MessageClass;->CLASS_1:Landroid/telephony/SmsMessage$MessageClass;

    iput-object v6, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Landroid/telephony/SmsMessage$MessageClass;

    goto/16 :goto_117

    .line 1816
    :pswitch_28a
    sget-object v6, Landroid/telephony/SmsMessage$MessageClass;->CLASS_2:Landroid/telephony/SmsMessage$MessageClass;

    iput-object v6, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Landroid/telephony/SmsMessage$MessageClass;

    goto/16 :goto_117

    .line 1819
    :pswitch_290
    sget-object v6, Landroid/telephony/SmsMessage$MessageClass;->CLASS_3:Landroid/telephony/SmsMessage$MessageClass;

    iput-object v6, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Landroid/telephony/SmsMessage$MessageClass;

    goto/16 :goto_117

    .line 1776
    :pswitch_data_296
    .packed-switch 0x0
        :pswitch_258
        :pswitch_25d
        :pswitch_258
        :pswitch_265
        :pswitch_26d
    .end packed-switch

    .line 1669
    :pswitch_data_2a4
    .packed-switch 0x0
        :pswitch_168
        :pswitch_172
        :pswitch_16d
        :pswitch_193
    .end packed-switch

    .line 1808
    :pswitch_data_2b0
    .packed-switch 0x0
        :pswitch_27e
        :pswitch_284
        :pswitch_28a
        :pswitch_290
    .end packed-switch
.end method


# virtual methods
.method public getMessageClass()Landroid/telephony/SmsMessage$MessageClass;
    .registers 2

    .prologue
    .line 1829
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Landroid/telephony/SmsMessage$MessageClass;

    return-object v0
.end method

.method public getMessageIdentifier()I
    .registers 2

    .prologue
    .line 1836
    const/4 v0, 0x0

    return v0
.end method

.method public getNumOfVoicemails()I
    .registers 2

    .prologue
    .line 1400
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->numberOfMessages:I

    return v0
.end method

.method public getProtocolIdentifier()I
    .registers 2

    .prologue
    .line 1372
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->protocolIdentifier:I

    return v0
.end method

.method public getStatus()I
    .registers 2

    .prologue
    .line 1444
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->status:I

    return v0
.end method

.method public isCphsMwiMessage()Z
    .registers 2

    .prologue
    .line 1384
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->isCphsVoiceMessageClear()Z

    move-result v0

    if-nez v0, :cond_14

    iget-object p0, p0, Lcom/android/internal/telephony/SmsMessageBase;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    .end local p0
    check-cast p0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->isCphsVoiceMessageSet()Z

    move-result v0

    if-eqz v0, :cond_16

    :cond_14
    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public isMWIClearMessage()Z
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 1390
    iget-boolean v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->isMwi:Z

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mwiSense:Z

    if-nez v0, :cond_b

    move v0, v1

    .line 1394
    .end local p0
    :goto_a
    return v0

    .restart local p0
    :cond_b
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    if-eqz v0, :cond_1b

    iget-object p0, p0, Lcom/android/internal/telephony/SmsMessageBase;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    .end local p0
    check-cast p0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->isCphsVoiceMessageClear()Z

    move-result v0

    if-eqz v0, :cond_1b

    move v0, v1

    goto :goto_a

    :cond_1b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public isMWISetMessage()Z
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 1406
    iget-boolean v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->isMwi:Z

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mwiSense:Z

    if-ne v0, v1, :cond_b

    move v0, v1

    .line 1410
    .end local p0
    :goto_a
    return v0

    .restart local p0
    :cond_b
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    if-eqz v0, :cond_1b

    iget-object p0, p0, Lcom/android/internal/telephony/SmsMessageBase;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    .end local p0
    check-cast p0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->isCphsVoiceMessageSet()Z

    move-result v0

    if-eqz v0, :cond_1b

    move v0, v1

    goto :goto_a

    :cond_1b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public isMwiDontStore()Z
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 1416
    iget-boolean v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->isMwi:Z

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mwiDontStore:Z

    if-eqz v0, :cond_b

    move v0, v2

    .line 1439
    :goto_a
    return v0

    .line 1420
    :cond_b
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->isCphsMwiMessage()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 1426
    const-string v0, " "

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    move v0, v2

    .line 1427
    goto :goto_a

    .line 1439
    :cond_1f
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public isReplace()Z
    .registers 3

    .prologue
    .line 1377
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->protocolIdentifier:I

    and-int/lit16 v0, v0, 0xc0

    const/16 v1, 0x40

    if-ne v0, v1, :cond_18

    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->protocolIdentifier:I

    and-int/lit8 v0, v0, 0x3f

    if-lez v0, :cond_18

    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->protocolIdentifier:I

    and-int/lit8 v0, v0, 0x3f

    const/16 v1, 0x8

    if-ge v0, v1, :cond_18

    const/4 v0, 0x1

    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method public isReplyPathPresent()Z
    .registers 2

    .prologue
    .line 1454
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->replyPathPresent:Z

    return v0
.end method

.method public isStatusReportMessage()Z
    .registers 2

    .prologue
    .line 1449
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->isStatusReportMessage:Z

    return v0
.end method

.method public isTypeZero()Z
    .registers 3

    .prologue
    .line 181
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->protocolIdentifier:I

    const/16 v1, 0x40

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method
