.class public Lcom/android/mms/MmsConfig;
.super Ljava/lang/Object;
.source "MmsConfig.java"


# static fields
.field public static SMS_DB_COUNT:I

.field private static mAliasEnabled:Z

.field private static mAliasRuleMaxChars:I

.field private static mAliasRuleMinChars:I

.field private static mAllowAttachAudio:Z

.field private static mAllowSplitBarMove:Z

.field private static mComposeMaxLengthLimit:I

.field private static mDefaultMMSMessagesPerThread:I

.field private static mDefaultSMSMessagesPerThread:I

.field private static mDisableEndterKey:I

.field private static mDisableSmsSettingNetworkLock:I

.field private static mEmailGateway:Ljava/lang/String;

.field private static mHttpParams:Ljava/lang/String;

.field private static mHttpParamsLine1Key:Ljava/lang/String;

.field private static mHttpSocketTimeout:I

.field private static mInputModeAuto:I

.field private static mMaxImageHeight:I

.field private static mMaxImageWidth:I

.field private static mMaxMessageCountPerThread:I

.field private static mMaxMessageSize:I

.field private static mMaxSizeScaleForPendingMmsAllowed:I

.field private static mMinMessageCountPerThread:I

.field private static mMinimumSlideElementDuration:I

.field private static mMmsEnabled:I

.field private static mMmsHeaderSize:I

.field private static mNotifyWapMMSC:Z

.field private static mOptionalFieldAttendance:Z

.field private static mRecipientLimit:I

.field private static mSavePdu:Z

.field private static mSendAnimationJpn:I

.field private static mSmsExpiredDate:I

.field private static mSmsToMmsTextThreshold:I

.field private static mSupportEmoji:I

.field private static mSupportHD:Z

.field private static mTransIdEnabled:Z

.field private static mTransactionLoggable:Z

.field private static mUSAATTUaProfUrl:Ljava/lang/String;

.field private static mUSAATTUserAgent:Ljava/lang/String;

.field private static mUSATMOUaProfUrl:Ljava/lang/String;

.field private static mUSATMOUserAgent:Ljava/lang/String;

.field private static mUaDebugSet:Z

.field private static mUaProfTagName:Ljava/lang/String;

.field private static mUaProfUrl:Ljava/lang/String;

.field private static mUaProfUrlDebug:Ljava/lang/String;

.field private static mUserAgent:Ljava/lang/String;

.field private static mUserAgentDebug:Ljava/lang/String;

.field private static mWapPush:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    const-string v4, "Android-Mms/2.0"

    .line 45
    sput v1, Lcom/android/mms/MmsConfig;->SMS_DB_COUNT:I

    .line 62
    sput-boolean v1, Lcom/android/mms/MmsConfig;->mTransIdEnabled:Z

    .line 64
    sput v3, Lcom/android/mms/MmsConfig;->mMmsEnabled:I

    .line 66
    const v0, 0x4b000

    sput v0, Lcom/android/mms/MmsConfig;->mMaxMessageSize:I

    .line 68
    const/16 v0, 0x1400

    sput v0, Lcom/android/mms/MmsConfig;->mMmsHeaderSize:I

    .line 70
    const-string v0, "Android-Mms/2.0"

    sput-object v4, Lcom/android/mms/MmsConfig;->mUserAgent:Ljava/lang/String;

    .line 71
    const-string v0, "Android-Mms/2.0"

    sput-object v4, Lcom/android/mms/MmsConfig;->mUSAATTUserAgent:Ljava/lang/String;

    .line 72
    const-string v0, "Android-Mms/2.0"

    sput-object v4, Lcom/android/mms/MmsConfig;->mUSATMOUserAgent:Ljava/lang/String;

    .line 73
    const-string v0, "x-wap-profile"

    sput-object v0, Lcom/android/mms/MmsConfig;->mUaProfTagName:Ljava/lang/String;

    .line 75
    sput-object v2, Lcom/android/mms/MmsConfig;->mUaProfUrl:Ljava/lang/String;

    .line 76
    sput-object v2, Lcom/android/mms/MmsConfig;->mUSAATTUaProfUrl:Ljava/lang/String;

    .line 77
    sput-object v2, Lcom/android/mms/MmsConfig;->mUSATMOUaProfUrl:Ljava/lang/String;

    .line 78
    sput-object v2, Lcom/android/mms/MmsConfig;->mHttpParams:Ljava/lang/String;

    .line 80
    sput-object v2, Lcom/android/mms/MmsConfig;->mHttpParamsLine1Key:Ljava/lang/String;

    .line 82
    const-string v0, "121"

    sput-object v0, Lcom/android/mms/MmsConfig;->mEmailGateway:Ljava/lang/String;

    .line 84
    const/16 v0, 0x1e0

    sput v0, Lcom/android/mms/MmsConfig;->mMaxImageHeight:I

    .line 86
    const/16 v0, 0x280

    sput v0, Lcom/android/mms/MmsConfig;->mMaxImageWidth:I

    .line 88
    const v0, 0x7fffffff

    sput v0, Lcom/android/mms/MmsConfig;->mRecipientLimit:I

    .line 90
    const/16 v0, 0xc8

    sput v0, Lcom/android/mms/MmsConfig;->mDefaultSMSMessagesPerThread:I

    .line 92
    const/16 v0, 0x14

    sput v0, Lcom/android/mms/MmsConfig;->mDefaultMMSMessagesPerThread:I

    .line 94
    sput v5, Lcom/android/mms/MmsConfig;->mMinMessageCountPerThread:I

    .line 96
    const/16 v0, 0x1388

    sput v0, Lcom/android/mms/MmsConfig;->mMaxMessageCountPerThread:I

    .line 98
    const/4 v0, 0x4

    sput v0, Lcom/android/mms/MmsConfig;->mSmsToMmsTextThreshold:I

    .line 100
    const v0, 0xea60

    sput v0, Lcom/android/mms/MmsConfig;->mHttpSocketTimeout:I

    .line 102
    const/4 v0, 0x5

    sput v0, Lcom/android/mms/MmsConfig;->mMinimumSlideElementDuration:I

    .line 104
    sput-boolean v1, Lcom/android/mms/MmsConfig;->mNotifyWapMMSC:Z

    .line 106
    sput-boolean v3, Lcom/android/mms/MmsConfig;->mAllowAttachAudio:Z

    .line 109
    sput-boolean v1, Lcom/android/mms/MmsConfig;->mTransactionLoggable:Z

    .line 111
    sput-boolean v1, Lcom/android/mms/MmsConfig;->mSavePdu:Z

    .line 113
    sput-boolean v1, Lcom/android/mms/MmsConfig;->mUaDebugSet:Z

    .line 115
    sput-object v2, Lcom/android/mms/MmsConfig;->mUserAgentDebug:Ljava/lang/String;

    .line 117
    sput-object v2, Lcom/android/mms/MmsConfig;->mUaProfUrlDebug:Ljava/lang/String;

    .line 119
    sput-boolean v1, Lcom/android/mms/MmsConfig;->mOptionalFieldAttendance:Z

    .line 125
    const/16 v0, 0xa

    sput v0, Lcom/android/mms/MmsConfig;->mMaxSizeScaleForPendingMmsAllowed:I

    .line 128
    sput-boolean v1, Lcom/android/mms/MmsConfig;->mAliasEnabled:Z

    .line 130
    sput v5, Lcom/android/mms/MmsConfig;->mAliasRuleMinChars:I

    .line 132
    const/16 v0, 0x30

    sput v0, Lcom/android/mms/MmsConfig;->mAliasRuleMaxChars:I

    .line 135
    sput v1, Lcom/android/mms/MmsConfig;->mDisableEndterKey:I

    .line 137
    sput v1, Lcom/android/mms/MmsConfig;->mComposeMaxLengthLimit:I

    .line 139
    sput v1, Lcom/android/mms/MmsConfig;->mInputModeAuto:I

    .line 141
    sput v1, Lcom/android/mms/MmsConfig;->mSmsExpiredDate:I

    .line 143
    sput v1, Lcom/android/mms/MmsConfig;->mSendAnimationJpn:I

    .line 145
    sput v3, Lcom/android/mms/MmsConfig;->mWapPush:I

    .line 147
    sput v1, Lcom/android/mms/MmsConfig;->mDisableSmsSettingNetworkLock:I

    .line 149
    sput v1, Lcom/android/mms/MmsConfig;->mSupportEmoji:I

    .line 153
    sput-boolean v1, Lcom/android/mms/MmsConfig;->mAllowSplitBarMove:Z

    .line 154
    sput-boolean v1, Lcom/android/mms/MmsConfig;->mSupportHD:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    .locals 4
    .parameter "parser"
    .parameter "firstElementName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    .line 418
    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .local v0, type:I
    if-eq v0, v2, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 422
    :cond_1
    if-eq v0, v2, :cond_2

    .line 423
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v2, "No start tag found"

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 426
    :cond_2
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 427
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected start tag: found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 430
    :cond_3
    return-void
.end method

.method public static getAliasMaxChars()I
    .locals 1

    .prologue
    .line 288
    sget v0, Lcom/android/mms/MmsConfig;->mAliasRuleMaxChars:I

    return v0
.end method

.method public static getAliasMinChars()I
    .locals 1

    .prologue
    .line 284
    sget v0, Lcom/android/mms/MmsConfig;->mAliasRuleMinChars:I

    return v0
.end method

.method public static getAllowAttachAudio()Z
    .locals 1

    .prologue
    .line 292
    sget-boolean v0, Lcom/android/mms/MmsConfig;->mAllowAttachAudio:Z

    return v0
.end method

.method public static final getAllowSplitBarMove()Z
    .locals 1

    .prologue
    .line 615
    sget-boolean v0, Lcom/android/mms/MmsConfig;->mAllowSplitBarMove:Z

    return v0
.end method

.method public static getComposeMaxLengthLimit()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 374
    sget v0, Lcom/android/mms/MmsConfig;->mComposeMaxLengthLimit:I

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getDefaultMMSMessagesPerThread()I
    .locals 1

    .prologue
    .line 248
    sget v0, Lcom/android/mms/MmsConfig;->mDefaultMMSMessagesPerThread:I

    return v0
.end method

.method public static getDefaultSMSMessagesPerThread()I
    .locals 1

    .prologue
    .line 244
    sget v0, Lcom/android/mms/MmsConfig;->mDefaultSMSMessagesPerThread:I

    return v0
.end method

.method public static getDisableEndterKey()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 368
    sget v0, Lcom/android/mms/MmsConfig;->mDisableEndterKey:I

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getEmailGateway()Ljava/lang/String;
    .locals 1

    .prologue
    .line 228
    sget-object v0, Lcom/android/mms/MmsConfig;->mEmailGateway:Ljava/lang/String;

    return-object v0
.end method

.method public static getHttpParams()Ljava/lang/String;
    .locals 1

    .prologue
    .line 220
    sget-object v0, Lcom/android/mms/MmsConfig;->mHttpParams:Ljava/lang/String;

    return-object v0
.end method

.method public static getHttpParamsLine1Key()Ljava/lang/String;
    .locals 1

    .prologue
    .line 224
    sget-object v0, Lcom/android/mms/MmsConfig;->mHttpParamsLine1Key:Ljava/lang/String;

    return-object v0
.end method

.method public static getHttpSocketTimeout()I
    .locals 1

    .prologue
    .line 264
    sget v0, Lcom/android/mms/MmsConfig;->mHttpSocketTimeout:I

    return v0
.end method

.method public static getInputModeAuto()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 380
    sget v0, Lcom/android/mms/MmsConfig;->mInputModeAuto:I

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getMaxContentsSize()I
    .locals 2

    .prologue
    .line 175
    sget v0, Lcom/android/mms/MmsConfig;->mMaxMessageSize:I

    sget v1, Lcom/android/mms/MmsConfig;->mMmsHeaderSize:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public static getMaxImageHeight()I
    .locals 1

    .prologue
    .line 232
    sget v0, Lcom/android/mms/MmsConfig;->mMaxImageHeight:I

    return v0
.end method

.method public static getMaxImageWidth()I
    .locals 1

    .prologue
    .line 236
    sget v0, Lcom/android/mms/MmsConfig;->mMaxImageWidth:I

    return v0
.end method

.method public static getMaxMessageCountPerThread()I
    .locals 1

    .prologue
    .line 256
    sget v0, Lcom/android/mms/MmsConfig;->mMaxMessageCountPerThread:I

    return v0
.end method

.method public static getMaxMessageSize()I
    .locals 1

    .prologue
    .line 171
    sget v0, Lcom/android/mms/MmsConfig;->mMaxMessageSize:I

    return v0
.end method

.method public static getMaxSizeScaleForPendingMmsAllowed()I
    .locals 1

    .prologue
    .line 276
    sget v0, Lcom/android/mms/MmsConfig;->mMaxSizeScaleForPendingMmsAllowed:I

    return v0
.end method

.method public static getMinMessageCountPerThread()I
    .locals 1

    .prologue
    .line 252
    sget v0, Lcom/android/mms/MmsConfig;->mMinMessageCountPerThread:I

    return v0
.end method

.method public static getMinimumSlideElementDuration()I
    .locals 1

    .prologue
    .line 268
    sget v0, Lcom/android/mms/MmsConfig;->mMinimumSlideElementDuration:I

    return v0
.end method

.method public static getMmsEnabled()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 167
    sget v0, Lcom/android/mms/MmsConfig;->mMmsEnabled:I

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getNetWorkLock()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 404
    sget v0, Lcom/android/mms/MmsConfig;->mDisableSmsSettingNetworkLock:I

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getNotifyWapMMSC()Z
    .locals 1

    .prologue
    .line 272
    sget-boolean v0, Lcom/android/mms/MmsConfig;->mNotifyWapMMSC:Z

    return v0
.end method

.method public static getOptionalFieldAttendance()Z
    .locals 1

    .prologue
    .line 347
    sget-boolean v0, Lcom/android/mms/MmsConfig;->mOptionalFieldAttendance:Z

    return v0
.end method

.method public static getRecipientLimit()I
    .locals 1

    .prologue
    .line 240
    sget v0, Lcom/android/mms/MmsConfig;->mRecipientLimit:I

    return v0
.end method

.method public static getSavePduFiles()Z
    .locals 1

    .prologue
    .line 311
    sget-boolean v0, Lcom/android/mms/MmsConfig;->mSavePdu:Z

    return v0
.end method

.method public static getSendAnimationJpn()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 392
    sget v0, Lcom/android/mms/MmsConfig;->mSendAnimationJpn:I

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getSmsExpiredDate()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 386
    sget v0, Lcom/android/mms/MmsConfig;->mSmsExpiredDate:I

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getSmsToMmsTextThreshold()I
    .locals 1

    .prologue
    .line 260
    sget v0, Lcom/android/mms/MmsConfig;->mSmsToMmsTextThreshold:I

    return v0
.end method

.method public static getSupportEmoji()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 410
    sget v0, Lcom/android/mms/MmsConfig;->mSupportEmoji:I

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getTransIdEnabled()Z
    .locals 1

    .prologue
    .line 184
    sget-boolean v0, Lcom/android/mms/MmsConfig;->mTransIdEnabled:Z

    return v0
.end method

.method public static getTransactionLoggable()Z
    .locals 1

    .prologue
    .line 300
    sget-boolean v0, Lcom/android/mms/MmsConfig;->mTransactionLoggable:Z

    return v0
.end method

.method public static getUSAATTUaProfUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 212
    sget-object v0, Lcom/android/mms/MmsConfig;->mUSAATTUaProfUrl:Ljava/lang/String;

    return-object v0
.end method

.method public static getUSAATTUserAgent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 194
    sget-object v0, Lcom/android/mms/MmsConfig;->mUSAATTUserAgent:Ljava/lang/String;

    return-object v0
.end method

.method public static getUaProfTagName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 202
    sget-object v0, Lcom/android/mms/MmsConfig;->mUaProfTagName:Ljava/lang/String;

    return-object v0
.end method

.method public static getWapPush()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 398
    sget v0, Lcom/android/mms/MmsConfig;->mWapPush:I

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 157
    const-string v1, "Mms/MmsConfig"

    const-string v2, "MmsConfig.init()"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    invoke-static {p0}, Lcom/android/mms/MmsConfig;->loadMmsSettings(Landroid/content/Context;)V

    .line 162
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.mms.transaction.debugsettingready"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 163
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 164
    return-void
.end method

.method public static isAliasEnabled()Z
    .locals 1

    .prologue
    .line 280
    sget-boolean v0, Lcom/android/mms/MmsConfig;->mAliasEnabled:Z

    return v0
.end method

.method private static loadMmsSettings(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    .line 442
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    .line 443
    .local v1, parser:Landroid/content/res/XmlResourceParser;
    const-string v0, "Mms/MmsConfig"

    const-string v2, "[loadMmsSettings] "

    invoke-static {v0, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    :try_start_0
    const-string v0, "mms_config"

    invoke-static {v1, v0}, Lcom/android/mms/MmsConfig;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 448
    :cond_0
    :goto_0
    invoke-static {v1}, Lcom/android/mms/MmsConfig;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 449
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v3

    .line 450
    .local v3, tag:Ljava/lang/String;
    if-nez v3, :cond_2

    .line 597
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    .line 600
    .end local v3           #tag:Ljava/lang/String;
    .end local p0
    :goto_1
    const/4 p0, 0x0

    .line 602
    .local p0, errorStr:Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/mms/MmsConfig;->mUaProfUrl:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 603
    const-string p0, "uaProfUrl"

    .line 606
    :cond_1
    if-eqz p0, :cond_35

    .line 607
    const-string v0, "MmsConfig.loadMmsSettings mms_config.xml missing %s setting"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .end local v1           #parser:Landroid/content/res/XmlResourceParser;
    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 609
    .local p0, err:Ljava/lang/String;
    const-string v0, "Mms/MmsConfig"

    invoke-static {v0, p0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    new-instance v0, Lcom/android/mms/ContentRestrictionException;

    invoke-direct {v0, p0}, Lcom/android/mms/ContentRestrictionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 453
    .restart local v1       #parser:Landroid/content/res/XmlResourceParser;
    .restart local v3       #tag:Ljava/lang/String;
    .local p0, context:Landroid/content/Context;
    :cond_2
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {v1, v0}, Landroid/content/res/XmlResourceParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v0

    .line 454
    .local v0, name:Ljava/lang/String;
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    .line 455
    .local v5, value:Ljava/lang/String;
    const/4 v2, 0x0

    .line 456
    .local v2, text:Ljava/lang/String;
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v4

    const/4 v6, 0x4

    if-ne v4, v6, :cond_36

    .line 457
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getText()Ljava/lang/String;

    move-result-object v2

    move-object v4, v2

    .line 461
    .end local v2           #text:Ljava/lang/String;
    .local v4, text:Ljava/lang/String;
    :goto_2
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 462
    .local v2, s:Ljava/lang/StringBuffer;
    const-string v6, "Mms/MmsConfig"

    const-string v7, "tag: "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .end local v2           #s:Ljava/lang/StringBuffer;
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v7, " value: "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    const-string v2, "name"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .end local v0           #name:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 466
    const-string v0, "bool"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 468
    const-string v0, "enabledMMS"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 469
    const-string v0, "true"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    :goto_3
    sput v0, Lcom/android/mms/MmsConfig;->mMmsEnabled:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_0

    .line 590
    .end local v3           #tag:Ljava/lang/String;
    .end local v4           #text:Ljava/lang/String;
    .end local v5           #value:Ljava/lang/String;
    :catch_0
    move-exception p0

    .line 591
    .local p0, e:Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_2
    const-string v0, "Mms/MmsConfig"

    const-string v2, "loadMmsSettings caught "

    invoke-static {v0, v2, p0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 597
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    goto/16 :goto_1

    .line 469
    .restart local v3       #tag:Ljava/lang/String;
    .restart local v4       #text:Ljava/lang/String;
    .restart local v5       #value:Ljava/lang/String;
    .local p0, context:Landroid/content/Context;
    :cond_3
    const/4 v0, 0x0

    goto :goto_3

    .line 470
    :cond_4
    :try_start_3
    const-string v0, "enabledTransID"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 471
    const-string v0, "true"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/mms/MmsConfig;->mTransIdEnabled:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    .line 592
    .end local v3           #tag:Ljava/lang/String;
    .end local v4           #text:Ljava/lang/String;
    .end local v5           #value:Ljava/lang/String;
    :catch_1
    move-exception p0

    .line 593
    .local p0, e:Ljava/lang/NumberFormatException;
    :try_start_4
    const-string v0, "Mms/MmsConfig"

    const-string v2, "loadMmsSettings caught "

    invoke-static {v0, v2, p0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 597
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    goto/16 :goto_1

    .line 472
    .restart local v3       #tag:Ljava/lang/String;
    .restart local v4       #text:Ljava/lang/String;
    .restart local v5       #value:Ljava/lang/String;
    .local p0, context:Landroid/content/Context;
    :cond_5
    :try_start_5
    const-string v0, "enabledNotifyWapMMSC"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 473
    const-string v0, "true"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/mms/MmsConfig;->mNotifyWapMMSC:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_0

    .line 594
    .end local v3           #tag:Ljava/lang/String;
    .end local v4           #text:Ljava/lang/String;
    .end local v5           #value:Ljava/lang/String;
    :catch_2
    move-exception p0

    .line 595
    .local p0, e:Ljava/io/IOException;
    :try_start_6
    const-string v0, "Mms/MmsConfig"

    const-string v2, "loadMmsSettings caught "

    invoke-static {v0, v2, p0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 597
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    goto/16 :goto_1

    .line 474
    .restart local v3       #tag:Ljava/lang/String;
    .restart local v4       #text:Ljava/lang/String;
    .restart local v5       #value:Ljava/lang/String;
    .local p0, context:Landroid/content/Context;
    :cond_6
    :try_start_7
    const-string v0, "aliasEnabled"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 475
    const-string v0, "true"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/mms/MmsConfig;->mAliasEnabled:Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto/16 :goto_0

    .line 597
    .end local v3           #tag:Ljava/lang/String;
    .end local v4           #text:Ljava/lang/String;
    .end local v5           #value:Ljava/lang/String;
    .end local p0           #context:Landroid/content/Context;
    :catchall_0
    move-exception p0

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    throw p0

    .line 476
    .restart local v3       #tag:Ljava/lang/String;
    .restart local v4       #text:Ljava/lang/String;
    .restart local v5       #value:Ljava/lang/String;
    .restart local p0       #context:Landroid/content/Context;
    :cond_7
    :try_start_8
    const-string v0, "allowAttachAudio"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 477
    const-string v0, "true"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/mms/MmsConfig;->mAllowAttachAudio:Z

    goto/16 :goto_0

    .line 478
    :cond_8
    const-string v0, "disableEndterKey"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 479
    const-string v0, "true"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    :goto_4
    sput v0, Lcom/android/mms/MmsConfig;->mDisableEndterKey:I

    goto/16 :goto_0

    :cond_9
    const/4 v0, 0x0

    goto :goto_4

    .line 480
    :cond_a
    const-string v0, "composeMaxLengthLimit"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 481
    const-string v0, "true"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    :goto_5
    sput v0, Lcom/android/mms/MmsConfig;->mComposeMaxLengthLimit:I

    goto/16 :goto_0

    :cond_b
    const/4 v0, 0x0

    goto :goto_5

    .line 482
    :cond_c
    const-string v0, "inputModeAuto"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 483
    const-string v0, "true"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    :goto_6
    sput v0, Lcom/android/mms/MmsConfig;->mInputModeAuto:I

    goto/16 :goto_0

    :cond_d
    const/4 v0, 0x0

    goto :goto_6

    .line 484
    :cond_e
    const-string v0, "smsExpiryDate"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 485
    const-string v0, "true"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    :goto_7
    sput v0, Lcom/android/mms/MmsConfig;->mSmsExpiredDate:I

    goto/16 :goto_0

    :cond_f
    const/4 v0, 0x0

    goto :goto_7

    .line 486
    :cond_10
    const-string v0, "sendAnimationJpn"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 487
    const-string v0, "true"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    :goto_8
    sput v0, Lcom/android/mms/MmsConfig;->mSendAnimationJpn:I

    goto/16 :goto_0

    :cond_11
    const/4 v0, 0x0

    goto :goto_8

    .line 488
    :cond_12
    const-string v0, "wapPush"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 489
    const-string v0, "true"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    :goto_9
    sput v0, Lcom/android/mms/MmsConfig;->mWapPush:I

    goto/16 :goto_0

    :cond_13
    const/4 v0, 0x0

    goto :goto_9

    .line 490
    :cond_14
    const-string v0, "disable_sms_setting_networklock"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 491
    const-string v0, "true"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    const/4 v0, 0x1

    :goto_a
    sput v0, Lcom/android/mms/MmsConfig;->mDisableSmsSettingNetworkLock:I

    goto/16 :goto_0

    :cond_15
    const/4 v0, 0x0

    goto :goto_a

    .line 492
    :cond_16
    const-string v0, "supportEmoji"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 493
    const-string v0, "true"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    const/4 v0, 0x1

    :goto_b
    sput v0, Lcom/android/mms/MmsConfig;->mSupportEmoji:I

    goto/16 :goto_0

    :cond_17
    const/4 v0, 0x0

    goto :goto_b

    .line 494
    :cond_18
    const-string v0, "supportHD"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 495
    const-string v0, "true"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/mms/MmsConfig;->mSupportHD:Z

    goto/16 :goto_0

    .line 497
    :cond_19
    const-string v0, "int"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 499
    const-string v0, "maxMessageSize"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 500
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/mms/MmsConfig;->mMaxMessageSize:I

    goto/16 :goto_0

    .line 501
    :cond_1a
    const-string v0, "ATTmaxMessageSize"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 502
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/mms/MmsConfig;->mMaxMessageSize:I

    goto/16 :goto_0

    .line 503
    :cond_1b
    const-string v0, "TMOmaxMessageSize"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 505
    :cond_1c
    const-string v0, "mmsHeaderSize"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 506
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/mms/MmsConfig;->mMmsHeaderSize:I

    goto/16 :goto_0

    .line 507
    :cond_1d
    const-string v0, "maxImageHeight"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 508
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/mms/MmsConfig;->mMaxImageHeight:I

    goto/16 :goto_0

    .line 509
    :cond_1e
    const-string v0, "maxImageWidth"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 510
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/mms/MmsConfig;->mMaxImageWidth:I

    goto/16 :goto_0

    .line 511
    :cond_1f
    const-string v0, "defaultSMSMessagesPerThread"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 512
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/mms/MmsConfig;->mDefaultSMSMessagesPerThread:I

    goto/16 :goto_0

    .line 513
    :cond_20
    const-string v0, "defaultMMSMessagesPerThread"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 514
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/mms/MmsConfig;->mDefaultMMSMessagesPerThread:I

    goto/16 :goto_0

    .line 515
    :cond_21
    const-string v0, "minMessageCountPerThread"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 516
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/mms/MmsConfig;->mMinMessageCountPerThread:I

    goto/16 :goto_0

    .line 517
    :cond_22
    const-string v0, "maxMessageCountPerThread"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 518
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/mms/MmsConfig;->mMaxMessageCountPerThread:I

    goto/16 :goto_0

    .line 519
    :cond_23
    const-string v0, "smsToMmsTextThreshold"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 520
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 521
    .local v0, defaultThreshold:I
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 523
    .local v2, sharedPrefs:Landroid/content/SharedPreferences;
    const-string v3, "csc_pref_key_threshold"

    .end local v3           #tag:Ljava/lang/String;
    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .end local v0           #defaultThreshold:I
    sput v0, Lcom/android/mms/MmsConfig;->mSmsToMmsTextThreshold:I

    .line 525
    const-string v0, "Mms/MmsConfig"

    new-instance v2, Ljava/lang/StringBuilder;

    .end local v2           #sharedPrefs:Landroid/content/SharedPreferences;
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[loadMmsSettings] mSmsToMmsTextThreshold= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/mms/MmsConfig;->mSmsToMmsTextThreshold:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 527
    .restart local v3       #tag:Ljava/lang/String;
    :cond_24
    const-string v0, "recipientLimit"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 528
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 529
    .local v0, defaultMax:I
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 531
    .restart local v2       #sharedPrefs:Landroid/content/SharedPreferences;
    const-string v3, "csc_pref_key_max_recipient"

    .end local v3           #tag:Ljava/lang/String;
    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .end local v0           #defaultMax:I
    sput v0, Lcom/android/mms/MmsConfig;->mRecipientLimit:I

    .line 533
    sget v0, Lcom/android/mms/MmsConfig;->mRecipientLimit:I

    if-gez v0, :cond_25

    .line 534
    const v0, 0x7fffffff

    sput v0, Lcom/android/mms/MmsConfig;->mRecipientLimit:I

    .line 536
    :cond_25
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "MmsRecipientLimit"

    .end local v2           #sharedPrefs:Landroid/content/SharedPreferences;
    sget v3, Lcom/android/mms/MmsConfig;->mRecipientLimit:I

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 538
    const-string v0, "Mms/MmsConfig"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[loadMmsSettings] mRecipientLimit= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/mms/MmsConfig;->mRecipientLimit:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 539
    .restart local v3       #tag:Ljava/lang/String;
    :cond_26
    const-string v0, "httpSocketTimeout"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 540
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/mms/MmsConfig;->mHttpSocketTimeout:I

    goto/16 :goto_0

    .line 541
    :cond_27
    const-string v0, "minimumSlideElementDuration"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 542
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/mms/MmsConfig;->mMinimumSlideElementDuration:I

    goto/16 :goto_0

    .line 543
    :cond_28
    const-string v0, "maxSizeScaleForPendingMmsAllowed"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 544
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/mms/MmsConfig;->mMaxSizeScaleForPendingMmsAllowed:I

    goto/16 :goto_0

    .line 545
    :cond_29
    const-string v0, "aliasMinChars"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 546
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/mms/MmsConfig;->mAliasRuleMinChars:I

    goto/16 :goto_0

    .line 547
    :cond_2a
    const-string v0, "aliasMaxChars"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 548
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/mms/MmsConfig;->mAliasRuleMaxChars:I

    goto/16 :goto_0

    .line 550
    :cond_2b
    const-string v0, "string"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 552
    const-string v0, "userAgent"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 553
    sput-object v4, Lcom/android/mms/MmsConfig;->mUserAgent:Ljava/lang/String;

    .line 554
    sget-object v0, Lcom/android/mms/MmsConfig;->mUserAgent:Ljava/lang/String;

    sput-object v0, Lcom/android/mms/MmsConfig;->mUserAgentDebug:Ljava/lang/String;

    goto/16 :goto_0

    .line 555
    :cond_2c
    const-string v0, "USAATTUserAgent"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 560
    const-string v0, "Mms/MmsConfig"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UA set for ATT "

    .end local v3           #tag:Ljava/lang/String;
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " UA is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    sput-object v4, Lcom/android/mms/MmsConfig;->mUSAATTUserAgent:Ljava/lang/String;

    goto/16 :goto_0

    .line 562
    .restart local v3       #tag:Ljava/lang/String;
    :cond_2d
    const-string v0, "USATMOUserAgent"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 569
    :cond_2e
    const-string v0, "uaProfTagName"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 570
    sput-object v4, Lcom/android/mms/MmsConfig;->mUaProfTagName:Ljava/lang/String;

    goto/16 :goto_0

    .line 571
    :cond_2f
    const-string v0, "uaProfUrl"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 572
    sput-object v4, Lcom/android/mms/MmsConfig;->mUaProfUrl:Ljava/lang/String;

    .line 573
    sget-object v0, Lcom/android/mms/MmsConfig;->mUaProfUrl:Ljava/lang/String;

    sput-object v0, Lcom/android/mms/MmsConfig;->mUaProfUrlDebug:Ljava/lang/String;

    goto/16 :goto_0

    .line 574
    :cond_30
    const-string v0, "USAATTuaProfUrl"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 575
    const-string v0, "Mms/MmsConfig"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UA set for ATT "

    .end local v3           #tag:Ljava/lang/String;
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " UA is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    sput-object v4, Lcom/android/mms/MmsConfig;->mUSAATTUaProfUrl:Ljava/lang/String;

    goto/16 :goto_0

    .line 577
    .restart local v3       #tag:Ljava/lang/String;
    :cond_31
    const-string v0, "USATMOuaProfUrl"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 580
    :cond_32
    const-string v0, "httpParams"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 581
    sput-object v4, Lcom/android/mms/MmsConfig;->mHttpParams:Ljava/lang/String;

    goto/16 :goto_0

    .line 582
    :cond_33
    const-string v0, "httpParamsLine1Key"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 583
    sput-object v4, Lcom/android/mms/MmsConfig;->mHttpParamsLine1Key:Ljava/lang/String;

    goto/16 :goto_0

    .line 584
    :cond_34
    const-string v0, "emailGatewayNumber"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 585
    sput-object v4, Lcom/android/mms/MmsConfig;->mEmailGateway:Ljava/lang/String;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    goto/16 :goto_0

    .line 612
    .end local v3           #tag:Ljava/lang/String;
    .end local v4           #text:Ljava/lang/String;
    .end local v5           #value:Ljava/lang/String;
    .local p0, errorStr:Ljava/lang/String;
    :cond_35
    return-void

    .local v0, name:Ljava/lang/String;
    .local v2, text:Ljava/lang/String;
    .restart local v3       #tag:Ljava/lang/String;
    .restart local v5       #value:Ljava/lang/String;
    .local p0, context:Landroid/content/Context;
    :cond_36
    move-object v4, v2

    .end local v2           #text:Ljava/lang/String;
    .restart local v4       #text:Ljava/lang/String;
    goto/16 :goto_2
.end method

.method public static final nextElement(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 2
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 436
    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .local v0, type:I
    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 439
    :cond_1
    return-void
.end method

.method public static setOptionalFieldAttendance(Z)V
    .locals 0
    .parameter "set"

    .prologue
    .line 351
    sput-boolean p0, Lcom/android/mms/MmsConfig;->mOptionalFieldAttendance:Z

    .line 352
    return-void
.end method

.method public static setSavePduFiles(Z)V
    .locals 0
    .parameter "set"

    .prologue
    .line 315
    sput-boolean p0, Lcom/android/mms/MmsConfig;->mSavePdu:Z

    .line 316
    return-void
.end method

.method public static setSmsMmsMaxRecipient(I)V
    .locals 3
    .parameter "value"

    .prologue
    .line 362
    const-string v0, "Mms/MmsConfig"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setSmsMmsMaxRecipient] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    sput p0, Lcom/android/mms/MmsConfig;->mRecipientLimit:I

    .line 364
    return-void
.end method

.method public static setSmsMmsThreshold(I)V
    .locals 3
    .parameter "value"

    .prologue
    .line 357
    const-string v0, "Mms/MmsConfig"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setSmsMmsThreshold] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    sput p0, Lcom/android/mms/MmsConfig;->mSmsToMmsTextThreshold:I

    .line 359
    return-void
.end method

.method public static setTransactionLoggable(Z)V
    .locals 0
    .parameter "set"

    .prologue
    .line 304
    sput-boolean p0, Lcom/android/mms/MmsConfig;->mTransactionLoggable:Z

    .line 305
    return-void
.end method

.method public static setUaOrigin()V
    .locals 1

    .prologue
    .line 335
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/mms/MmsConfig;->mUaDebugSet:Z

    .line 336
    sget-object v0, Lcom/android/mms/MmsConfig;->mUserAgent:Ljava/lang/String;

    sput-object v0, Lcom/android/mms/MmsConfig;->mUserAgentDebug:Ljava/lang/String;

    .line 337
    sget-object v0, Lcom/android/mms/MmsConfig;->mUaProfUrl:Ljava/lang/String;

    sput-object v0, Lcom/android/mms/MmsConfig;->mUaProfUrlDebug:Ljava/lang/String;

    .line 338
    return-void
.end method

.method public static setUaProfUrl(Ljava/lang/String;)V
    .locals 1
    .parameter "set"

    .prologue
    .line 330
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/mms/MmsConfig;->mUaDebugSet:Z

    .line 331
    sput-object p0, Lcom/android/mms/MmsConfig;->mUaProfUrlDebug:Ljava/lang/String;

    .line 332
    return-void
.end method

.method public static setUserAgent(Ljava/lang/String;)V
    .locals 1
    .parameter "set"

    .prologue
    .line 325
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/mms/MmsConfig;->mUaDebugSet:Z

    .line 326
    sput-object p0, Lcom/android/mms/MmsConfig;->mUserAgentDebug:Ljava/lang/String;

    .line 327
    return-void
.end method
