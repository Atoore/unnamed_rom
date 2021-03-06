.class public final Landroid/provider/Telephony$Sms$Intents;
.super Ljava/lang/Object;
.source "Telephony.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Telephony$Sms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Intents"
.end annotation


# static fields
.field public static final CB_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.CB_RECEIVED"

.field public static final CB_SETTINGS_AVAILABLE_ACTION:Ljava/lang/String; = "android.provider.Telephony.CB_SETTINGS_AVAILABLE"

.field public static final CB_SMS_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.CB_SMS_RECEIVED"

.field public static final DATA_SMS_RECEIVED_ACTION:Ljava/lang/String; = "android.intent.action.DATA_SMS_RECEIVED"

.field public static final DEVICE_READY_ACTION:Ljava/lang/String; = "android.provider.Telephony.DEVICE_READY"

.field public static final EMERGENCY_CDMA_MESSAGE_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.EMERGENCY_CDMA_MESSAGE_RECEIVED"

.field public static final GET_CB_ERR_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.GET_CB_ERR_RECEIVED"

.field public static final GET_SMSC_ACTION:Ljava/lang/String; = "android.provider.Telephony.GET_SMSC"

.field public static final KT_NOTI_SMS_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.KT_NOTI_SMS_RECEIVED"

.field public static final RESULT_SMS_ALL_MEMORY_FULL:I = 0x6

.field public static final RESULT_SMS_DSAC_FAIL:I = 0x7

.field public static final RESULT_SMS_DUPLICATE:I = 0x8

.field public static final RESULT_SMS_GENERIC_ERROR:I = 0x2

.field public static final RESULT_SMS_HANDLED:I = 0x1

.field public static final RESULT_SMS_OUT_OF_MEMORY:I = 0x3

.field public static final RESULT_SMS_SIM_MEMORY_FULL:I = 0x5

.field public static final RESULT_SMS_UNSUPPORTED:I = 0x4

.field public static final SET_CB_ERR_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.SET_CB_ERR_RECEIVED"

.field public static final SHOW_DATA_SMS_RECEIVED_ACTION:Ljava/lang/String; = "com.kt.show.manger.action.SHOW_DATA_SMS_RECEIVED"

.field public static final SIM_FULL_ACTION:Ljava/lang/String; = "android.provider.Telephony.SIM_FULL"

.field public static final SMS_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.SMS_RECEIVED"

.field public static final SMS_REJECTED_ACTION:Ljava/lang/String; = "android.provider.Telephony.SMS_REJECTED"

.field public static final WAP_PUSH_DM_NOTI_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.WAP_PUSH_DM_NOTI_RECEIVED"

.field public static final WAP_PUSH_DM_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.WAP_PUSH_DM_RECEIVED"

.field public static final WAP_PUSH_DM_SET_RECEIVED_ACTION:Ljava/lang/String; = "android.intent.action.SET_DM"

.field public static final WAP_PUSH_DS_NOTI_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.WAP_PUSH_DS_NOTI_RECEIVED"

.field public static final WAP_PUSH_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.WAP_PUSH_RECEIVED"

.field public static final WAP_PUSH_SLC_RECEIVED_ACTION:Ljava/lang/String; = "com.nttdocomo.android.syncmlapp.SP_SYNCML_PUSH"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 524
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getCbMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/gsm/CbMessage;
    .registers 9
    .parameter "intent"

    .prologue
    .line 802
    const-string/jumbo v7, "pdus"

    invoke-virtual {p0, v7}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/lang/Object;

    move-object v0, p0

    check-cast v0, [Ljava/lang/Object;

    move-object v2, v0

    .line 803
    .local v2, messages:[Ljava/lang/Object;
    array-length v7, v2

    new-array v5, v7, [[B

    .line 805
    .local v5, pduObjs:[[B
    const/4 v1, 0x0

    .local v1, i:I
    :goto_11
    array-length v7, v2

    if-ge v1, v7, :cond_1f

    .line 806
    aget-object p0, v2, v1

    check-cast p0, [B

    check-cast p0, [B

    aput-object p0, v5, v1

    .line 805
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 808
    :cond_1f
    array-length v7, v5

    new-array v6, v7, [[B

    .line 809
    .local v6, pdus:[[B
    array-length v4, v6

    .line 810
    .local v4, pduCount:I
    new-array v3, v4, [Landroid/telephony/gsm/CbMessage;

    .line 811
    .local v3, msgs:[Landroid/telephony/gsm/CbMessage;
    const/4 v1, 0x0

    :goto_26
    if-ge v1, v4, :cond_37

    .line 812
    aget-object v7, v5, v1

    aput-object v7, v6, v1

    .line 813
    aget-object v7, v6, v1

    invoke-static {v7}, Landroid/telephony/gsm/CbMessage;->createFromPdu([B)Landroid/telephony/gsm/CbMessage;

    move-result-object v7

    aput-object v7, v3, v1

    .line 811
    add-int/lit8 v1, v1, 0x1

    goto :goto_26

    .line 815
    :cond_37
    return-object v3
.end method

.method public static final getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;
    .registers 9
    .parameter "intent"

    .prologue
    .line 784
    const-string/jumbo v7, "pdus"

    invoke-virtual {p0, v7}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/lang/Object;

    move-object v0, p0

    check-cast v0, [Ljava/lang/Object;

    move-object v2, v0

    .line 785
    .local v2, messages:[Ljava/lang/Object;
    array-length v7, v2

    new-array v5, v7, [[B

    .line 787
    .local v5, pduObjs:[[B
    const/4 v1, 0x0

    .local v1, i:I
    :goto_11
    array-length v7, v2

    if-ge v1, v7, :cond_1f

    .line 788
    aget-object p0, v2, v1

    check-cast p0, [B

    check-cast p0, [B

    aput-object p0, v5, v1

    .line 787
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 790
    :cond_1f
    array-length v7, v5

    new-array v6, v7, [[B

    .line 791
    .local v6, pdus:[[B
    array-length v4, v6

    .line 792
    .local v4, pduCount:I
    new-array v3, v4, [Landroid/telephony/SmsMessage;

    .line 793
    .local v3, msgs:[Landroid/telephony/SmsMessage;
    const/4 v1, 0x0

    :goto_26
    if-ge v1, v4, :cond_37

    .line 794
    aget-object v7, v5, v1

    aput-object v7, v6, v1

    .line 795
    aget-object v7, v6, v1

    invoke-static {v7}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v7

    aput-object v7, v3, v1

    .line 793
    add-int/lit8 v1, v1, 0x1

    goto :goto_26

    .line 797
    :cond_37
    return-object v3
.end method
