.class final Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;
.super Lcom/android/internal/telephony/SMSDispatcher;
.source "GsmSMSDispatcher.java"


# static fields
.field private static SMSC_ADDRESS_LENGTH:I = 0x0

.field private static final TAG:Ljava/lang/String; = "GSM"

.field private static final hexDigitChars:Ljava/lang/String; = "0123456789abcdef"


# instance fields
.field private mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 64
    const/16 v0, 0x15

    sput v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->SMSC_ADDRESS_LENGTH:I

    return-void
.end method

.method constructor <init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V
    .registers 2
    .parameter "phone"

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    .line 69
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    .line 70
    return-void
.end method

.method private getSmscNumber([BZ)Ljava/lang/String;
    .registers 17
    .parameter "a"
    .parameter "garbage_value"

    .prologue
    .line 74
    new-instance v0, Ljava/lang/StringBuffer;

    sget v11, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->SMSC_ADDRESS_LENGTH:I

    invoke-direct {v0, v11}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 75
    .local v0, buf:Ljava/lang/StringBuffer;
    const/4 v2, 0x1

    .line 79
    .local v2, extra:I
    const/4 v8, 0x0

    .line 81
    .local v8, smsc_length:I
    const/4 v4, 0x0

    .line 83
    .local v4, international:Z
    const/4 v11, 0x0

    aget-byte v11, p1, v11

    if-nez v11, :cond_13

    .line 85
    const-string v6, "NotSet"

    .local v6, smsc:Ljava/lang/String;
    move-object v7, v6

    .line 133
    .end local v6           #smsc:Ljava/lang/String;
    .local v7, smsc:Ljava/lang/String;
    :goto_12
    return-object v7

    .line 88
    .end local v7           #smsc:Ljava/lang/String;
    :cond_13
    const/4 v11, 0x1

    aget-byte v11, p1, v11

    const/16 v12, -0x6f

    if-ne v11, v12, :cond_20

    .line 89
    const-string v11, "+"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 90
    const/4 v4, 0x1

    .line 92
    :cond_20
    add-int/lit8 v2, v2, 0x1

    .line 94
    const/16 v11, 0xa

    new-array v9, v11, [B

    .line 95
    .local v9, temp2:[B
    const/4 v11, 0x0

    array-length v12, p1

    const/4 v13, 0x2

    sub-int/2addr v12, v13

    invoke-static {p1, v2, v9, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 97
    const/4 v1, 0x0

    .local v1, cx:I
    :goto_2e
    array-length v11, v9

    if-ge v1, v11, :cond_5e

    .line 98
    aget-byte v11, v9, v1

    const/4 v12, -0x1

    if-ne v11, v12, :cond_39

    .line 97
    :cond_36
    :goto_36
    add-int/lit8 v1, v1, 0x1

    goto :goto_2e

    .line 101
    :cond_39
    aget-byte v11, v9, v1

    and-int/lit16 v11, v11, 0xff

    div-int/lit8 v3, v11, 0x10

    .line 102
    .local v3, hn:I
    aget-byte v11, v9, v1

    and-int/lit8 v5, v11, 0xf

    .line 103
    .local v5, ln:I
    const/16 v11, 0xa

    if-ge v5, v11, :cond_50

    .line 104
    const-string v11, "0123456789abcdef"

    invoke-virtual {v11, v5}, Ljava/lang/String;->charAt(I)C

    move-result v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 106
    :cond_50
    const/16 v11, 0xa

    if-ge v3, v11, :cond_36

    .line 107
    const-string v11, "0123456789abcdef"

    invoke-virtual {v11, v3}, Ljava/lang/String;->charAt(I)C

    move-result v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_36

    .line 112
    .end local v3           #hn:I
    .end local v5           #ln:I
    :cond_5e
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    .line 114
    .local v10, temp_smsc:Ljava/lang/String;
    const/4 v11, 0x0

    aget-byte v11, p1, v11

    const/4 v12, 0x1

    sub-int/2addr v11, v12

    mul-int/lit8 v8, v11, 0x2

    .line 116
    if-eqz v4, :cond_b3

    .line 118
    const/4 v11, 0x0

    add-int/lit8 v12, v8, 0x1

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 119
    .restart local v6       #smsc:Ljava/lang/String;
    const-string v11, "GSM"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "international even smsc = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :goto_8a
    if-eqz p2, :cond_97

    .line 128
    const/4 v11, 0x0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v12

    const/4 v13, 0x1

    sub-int/2addr v12, v13

    invoke-virtual {v6, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 131
    :cond_97
    const-string v11, "GSM"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "smsc = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v6

    .line 133
    .end local v6           #smsc:Ljava/lang/String;
    .restart local v7       #smsc:Ljava/lang/String;
    goto/16 :goto_12

    .line 123
    .end local v7           #smsc:Ljava/lang/String;
    :cond_b3
    const/4 v11, 0x0

    invoke-virtual {v10, v11, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .restart local v6       #smsc:Ljava/lang/String;
    goto :goto_8a
.end method

.method private resultToCause(I)I
    .registers 3
    .parameter "rc"

    .prologue
    .line 739
    packed-switch p1, :pswitch_data_14

    .line 756
    :pswitch_3
    const/16 v0, 0xff

    :goto_5
    return v0

    .line 743
    :pswitch_6
    const/4 v0, 0x0

    goto :goto_5

    .line 745
    :pswitch_8
    const/16 v0, 0xd3

    goto :goto_5

    .line 747
    :pswitch_b
    const/16 v0, 0xd4

    goto :goto_5

    .line 749
    :pswitch_e
    const/16 v0, 0xd5

    goto :goto_5

    .line 752
    :pswitch_11
    const/16 v0, 0xd6

    goto :goto_5

    .line 739
    :pswitch_data_14
    .packed-switch -0x1
        :pswitch_6
        :pswitch_3
        :pswitch_6
        :pswitch_3
        :pswitch_8
        :pswitch_3
        :pswitch_b
        :pswitch_e
        :pswitch_11
    .end packed-switch
.end method

.method private sendMultipartTextWithPermit(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 30
    .parameter "destinationAddress"
    .parameter "scAddress"
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 567
    .local p3, parts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, sentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, deliveryIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object v4, v0

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getState()I

    move-result v22

    .line 568
    .local v22, ss:I
    if-eqz v22, :cond_41

    .line 569
    const/4 v14, 0x0

    .local v14, i:I
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v11

    .local v11, count:I
    :goto_14
    if-ge v14, v11, :cond_10f

    .line 570
    const/16 v20, 0x0

    .line 571
    .local v20, sentIntent:Landroid/app/PendingIntent;
    if-eqz p4, :cond_29

    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le v4, v14, :cond_29

    .line 572
    move-object/from16 v0, p4

    move v1, v14

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    .end local v20           #sentIntent:Landroid/app/PendingIntent;
    check-cast v20, Landroid/app/PendingIntent;

    .line 574
    .restart local v20       #sentIntent:Landroid/app/PendingIntent;
    :cond_29
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v1, v4

    move-object/from16 v2, v20

    move-object v3, v5

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->SmsTrackerFactory(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v23

    .line 575
    .local v23, tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->handleNotInService(ILcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 569
    add-int/lit8 v14, v14, 0x1

    goto :goto_14

    .line 580
    .end local v11           #count:I
    .end local v14           #i:I
    .end local v20           #sentIntent:Landroid/app/PendingIntent;
    .end local v23           #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_41
    invoke-static {}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->getNextConcatenatedRef()I

    move-result v4

    move v0, v4

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    .line 581
    .local v19, refNumber:I
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v16

    .line 582
    .local v16, msgCount:I
    const/4 v9, 0x0

    .line 584
    .local v9, encoding:I
    sput v16, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mRemainingMessages:I

    .line 586
    const/4 v14, 0x0

    .restart local v14       #i:I
    :goto_52
    move v0, v14

    move/from16 v1, v16

    if-ge v0, v1, :cond_73

    .line 587
    move-object/from16 v0, p3

    move v1, v14

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/android/internal/telephony/gsm/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-result-object v13

    .line 588
    .local v13, details:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    iget v4, v13, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    if-eq v9, v4, :cond_70

    if-eqz v9, :cond_6e

    const/4 v4, 0x1

    if-ne v9, v4, :cond_70

    .line 591
    :cond_6e
    iget v9, v13, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    .line 586
    :cond_70
    add-int/lit8 v14, v14, 0x1

    goto :goto_52

    .line 597
    .end local v13           #details:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    :cond_73
    const/16 v17, 0x0

    .line 616
    .local v17, nationalLanguageIE:I
    const/4 v14, 0x0

    :goto_76
    move v0, v14

    move/from16 v1, v16

    if-ge v0, v1, :cond_10f

    .line 617
    new-instance v10, Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    invoke-direct {v10}, Lcom/android/internal/telephony/SmsHeader$ConcatRef;-><init>()V

    .line 618
    .local v10, concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    move/from16 v0, v19

    move-object v1, v10

    iput v0, v1, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    .line 619
    add-int/lit8 v4, v14, 0x1

    iput v4, v10, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    .line 620
    move/from16 v0, v16

    move-object v1, v10

    iput v0, v1, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    .line 621
    const/4 v4, 0x0

    iput-boolean v4, v10, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->isEightBits:Z

    .line 622
    new-instance v21, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct/range {v21 .. v21}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .line 629
    .local v21, smsHeader:Lcom/android/internal/telephony/SmsHeader;
    const/4 v4, 0x0

    sput v4, Lcom/android/internal/telephony/SmsHeader;->nationalLanguageSingleShiftTableIdentifierCode:I

    .line 632
    move-object v0, v10

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    .line 634
    const/16 v20, 0x0

    .line 635
    .restart local v20       #sentIntent:Landroid/app/PendingIntent;
    if-eqz p4, :cond_b1

    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le v4, v14, :cond_b1

    .line 636
    move-object/from16 v0, p4

    move v1, v14

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    .end local v20           #sentIntent:Landroid/app/PendingIntent;
    check-cast v20, Landroid/app/PendingIntent;

    .line 639
    .restart local v20       #sentIntent:Landroid/app/PendingIntent;
    :cond_b1
    const/4 v12, 0x0

    .line 640
    .local v12, deliveryIntent:Landroid/app/PendingIntent;
    if-eqz p5, :cond_c3

    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le v4, v14, :cond_c3

    .line 641
    move-object/from16 v0, p5

    move v1, v14

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    .end local v12           #deliveryIntent:Landroid/app/PendingIntent;
    check-cast v12, Landroid/app/PendingIntent;

    .line 644
    .restart local v12       #deliveryIntent:Landroid/app/PendingIntent;
    :cond_c3
    move-object/from16 v0, p3

    move v1, v14

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-eqz v12, :cond_10c

    const/4 v4, 0x1

    move v7, v4

    :goto_d0
    invoke-static/range {v21 .. v21}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object v8

    move-object/from16 v4, p2

    move-object/from16 v5, p1

    invoke-static/range {v4 .. v9}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BI)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v18

    .line 648
    .local v18, pdus:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    .line 649
    .local v15, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v4, "smsc"

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedScAddress:[B

    move-object v5, v0

    invoke-virtual {v15, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 650
    const-string/jumbo v4, "pdu"

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedMessage:[B

    move-object v5, v0

    invoke-virtual {v15, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 652
    move-object/from16 v0, p0

    move-object v1, v15

    move-object/from16 v2, v20

    move-object v3, v12

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->SmsTrackerFactory(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v23

    .line 653
    .restart local v23       #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 616
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_76

    .line 644
    .end local v15           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v18           #pdus:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .end local v23           #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_10c
    const/4 v4, 0x0

    move v7, v4

    goto :goto_d0

    .line 655
    .end local v9           #encoding:I
    .end local v10           #concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    .end local v12           #deliveryIntent:Landroid/app/PendingIntent;
    .end local v16           #msgCount:I
    .end local v17           #nationalLanguageIE:I
    .end local v19           #refNumber:I
    .end local v20           #sentIntent:Landroid/app/PendingIntent;
    .end local v21           #smsHeader:Lcom/android/internal/telephony/SmsHeader;
    :cond_10f
    return-void
.end method


# virtual methods
.method protected acknowledgeLastIncomingSms(ZILandroid/os/Message;)V
    .registers 6
    .parameter "success"
    .parameter "result"
    .parameter "response"

    .prologue
    .line 710
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v0, :cond_d

    .line 711
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->resultToCause(I)I

    move-result v1

    invoke-interface {v0, p1, v1, p3}, Lcom/android/internal/telephony/CommandsInterface;->acknowledgeLastIncomingGsmSms(ZILandroid/os/Message;)V

    .line 713
    :cond_d
    return-void
.end method

.method protected activateCellBroadcastSms(ILandroid/os/Message;)V
    .registers 5
    .parameter "activate"
    .parameter "response"

    .prologue
    .line 718
    const-string v0, "GSM"

    const-string v1, "Error! The functionality cell broadcast sms is not implemented for GSM."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    invoke-virtual {p2}, Landroid/os/Message;->recycle()V

    .line 720
    return-void
.end method

.method protected dispatchMessage(Lcom/android/internal/telephony/SmsMessageBase;)I
    .registers 15
    .parameter "smsb"

    .prologue
    .line 211
    const/4 v5, 0x0

    .line 212
    .local v5, ramBoot:Z
    const-string/jumbo v10, "ram"

    const-string v11, "encryption.bootmode"

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_11

    .line 213
    const/4 v5, 0x1

    .line 216
    :cond_11
    if-nez p1, :cond_15

    .line 217
    const/4 v10, 0x2

    .line 312
    :goto_14
    return v10

    .line 218
    :cond_15
    if-eqz v5, :cond_19

    .line 219
    const/4 v10, 0x2

    goto :goto_14

    .line 221
    :cond_19
    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/gsm/SmsMessage;

    move-object v6, v0

    .line 222
    .local v6, sms:Lcom/android/internal/telephony/gsm/SmsMessage;
    const/4 v3, 0x0

    .line 224
    .local v3, handled:Z
    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/SmsMessage;->isTypeZero()Z

    move-result v10

    if-eqz v10, :cond_2d

    .line 227
    const-string v10, "GSM"

    const-string v11, "Received short message type 0, Don\'t display or store it. Send Ack"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    const/4 v10, 0x1

    goto :goto_14

    .line 232
    :cond_2d
    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/SmsMessage;->isMWISetMessage()Z

    move-result v10

    if-eqz v10, :cond_80

    .line 235
    const-string v10, "[CJ]"

    const-string v11, "dispatchMessage: sms.isMWISetMessage()"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/SmsMessage;->getNumOfVoicemails()I

    move-result v9

    .line 237
    .local v9, voicemailCount:I
    const-string v10, "[CJ]"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "dispatchMessage: voicemailCount = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v10, v9}, Lcom/android/internal/telephony/gsm/GSMPhone;->updateMessageWaitingIndicatorWithCount(I)V

    .line 253
    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/SmsMessage;->isMwiDontStore()Z

    move-result v3

    .line 255
    const-string v10, "GSM"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Received voice mail indicator set SMS shouldStore="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    if-nez v3, :cond_7e

    const/4 v12, 0x1

    :goto_6f
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    .end local v9           #voicemailCount:I
    :cond_7a
    :goto_7a
    if-eqz v3, :cond_ae

    .line 266
    const/4 v10, 0x1

    goto :goto_14

    .line 255
    .restart local v9       #voicemailCount:I
    :cond_7e
    const/4 v12, 0x0

    goto :goto_6f

    .line 257
    .end local v9           #voicemailCount:I
    :cond_80
    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/SmsMessage;->isMWIClearMessage()Z

    move-result v10

    if-eqz v10, :cond_7a

    .line 258
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/android/internal/telephony/gsm/GSMPhone;->updateMessageWaitingIndicator(Z)V

    .line 259
    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/SmsMessage;->isMwiDontStore()Z

    move-result v3

    .line 261
    const-string v10, "GSM"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Received voice mail indicator clear SMS shouldStore="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    if-nez v3, :cond_ac

    const/4 v12, 0x1

    :goto_a0
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7a

    :cond_ac
    const/4 v12, 0x0

    goto :goto_a0

    .line 269
    :cond_ae
    iget-boolean v10, p0, Lcom/android/internal/telephony/SMSDispatcher;->mStorageAvailable:Z

    if-nez v10, :cond_bd

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/SmsMessage;->getMessageClass()Landroid/telephony/SmsMessage$MessageClass;

    move-result-object v10

    sget-object v11, Landroid/telephony/SmsMessage$MessageClass;->CLASS_0:Landroid/telephony/SmsMessage$MessageClass;

    if-eq v10, v11, :cond_bd

    .line 272
    const/4 v10, 0x3

    goto/16 :goto_14

    .line 275
    :cond_bd
    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/SmsMessage;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object v7

    .line 277
    .local v7, smsHeader:Lcom/android/internal/telephony/SmsHeader;
    if-eqz v7, :cond_118

    iget-object v10, v7, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    if-eqz v10, :cond_118

    const/16 v10, 0xb84

    iget-object v11, v7, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    iget v11, v11, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    if-ne v10, v11, :cond_118

    .line 278
    const/4 v2, 0x1

    .line 280
    .local v2, enabled:Z
    :try_start_d0
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v10}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "roaming_wap_push_enabled"

    invoke-static {v10, v11}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v8

    .line 281
    .local v8, value:I
    const/4 v10, 0x1

    if-ne v10, v8, :cond_10f

    const/4 v10, 0x1

    move v2, v10

    .line 282
    :goto_e6
    const-string v10, "GSM"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "isRoamingPushEnabled : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_fe
    .catch Ljava/lang/Exception; {:try_start_d0 .. :try_end_fe} :catch_112

    .line 286
    .end local v8           #value:I
    :goto_fe
    if-nez v2, :cond_118

    iget-object v10, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v10}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v10

    invoke-virtual {v10}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v10

    if-eqz v10, :cond_118

    .line 287
    const/4 v10, 0x1

    goto/16 :goto_14

    .line 281
    .restart local v8       #value:I
    :cond_10f
    const/4 v10, 0x0

    move v2, v10

    goto :goto_e6

    .line 283
    .end local v8           #value:I
    :catch_112
    move-exception v10

    move-object v1, v10

    .line 284
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_fe

    .line 293
    .end local v1           #e:Ljava/lang/Exception;
    .end local v2           #enabled:Z
    :cond_118
    if-eqz v7, :cond_11e

    iget-object v10, v7, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    if-nez v10, :cond_150

    .line 295
    :cond_11e
    const/4 v10, 0x1

    new-array v4, v10, [[B

    .line 296
    .local v4, pdus:[[B
    const/4 v10, 0x0

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/SmsMessage;->getPdu()[B

    move-result-object v11

    aput-object v11, v4, v10

    .line 298
    if-eqz v7, :cond_14c

    iget-object v10, v7, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    if-eqz v10, :cond_14c

    .line 299
    iget-object v10, v7, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    iget v10, v10, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    const/16 v11, 0xb84

    if-ne v10, v11, :cond_142

    .line 300
    iget-object v10, p0, Lcom/android/internal/telephony/SMSDispatcher;->mWapPush:Lcom/android/internal/telephony/WapPushOverSms;

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/SmsMessage;->getUserData()[B

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu([B)I

    move-result v10

    goto/16 :goto_14

    .line 303
    :cond_142
    iget-object v10, v7, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    iget v10, v10, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    invoke-virtual {p0, v4, v10}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->dispatchPortAddressedPdus([[BI)V

    .line 309
    :goto_149
    const/4 v10, -0x1

    goto/16 :goto_14

    .line 307
    :cond_14c
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->dispatchPdus([[B)V

    goto :goto_149

    .line 312
    .end local v4           #pdus:[[B
    :cond_150
    iget-object v10, v7, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    iget-object v11, v7, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    invoke-virtual {p0, v6, v10, v11}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->processMessagePart(Lcom/android/internal/telephony/SmsMessageBase;Lcom/android/internal/telephony/SmsHeader$ConcatRef;Lcom/android/internal/telephony/SmsHeader$PortAddrs;)I

    move-result v10

    goto/16 :goto_14
.end method

.method public dispatchSmsServiceCenter(Ljava/lang/String;)V
    .registers 10
    .parameter "smsc_hexstring"

    .prologue
    const/4 v7, -0x1

    const-string v6, "GSM"

    .line 140
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.provider.Telephony.GET_SMSC"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 142
    .local v1, intent:Landroid/content/Intent;
    const/4 v0, 0x0

    .line 144
    .local v0, garbage_value:Z
    const-string v4, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "smsc_hexstring = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    const-string v4, "f"

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v7, :cond_57

    const-string v4, "F"

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v7, :cond_57

    .line 149
    const/4 v0, 0x0

    .line 150
    const-string v4, "GSM"

    const-string/jumbo v4, "smsc_hexstring doesn\'t have garbage value"

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :goto_3d
    invoke-static {p1}, Lcom/android/internal/telephony/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 160
    .local v2, scAddress:[B
    const/4 v4, 0x1

    new-array v3, v4, [Ljava/lang/String;

    .line 162
    .local v3, smsc:[Ljava/lang/String;
    const/4 v4, 0x0

    invoke-direct {p0, v2, v0}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->getSmscNumber([BZ)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 164
    const-string/jumbo v4, "smsc"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 165
    const-string v4, "android.permission.RECEIVE_SMS"

    invoke-virtual {p0, v1, v4}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;)V

    .line 167
    return-void

    .line 154
    .end local v2           #scAddress:[B
    .end local v3           #smsc:[Ljava/lang/String;
    :cond_57
    const/4 v0, 0x1

    .line 155
    const-string v4, "GSM"

    const-string/jumbo v4, "smsc_hexstring has garbage value"

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3d
.end method

.method protected getCellBroadcastSmsConfig(Landroid/os/Message;)V
    .registers 4
    .parameter "response"

    .prologue
    .line 725
    const-string v0, "GSM"

    const-string v1, "Error! The functionality cell broadcast sms is not implemented for GSM."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    invoke-virtual {p1}, Landroid/os/Message;->recycle()V

    .line 727
    return-void
.end method

.method protected handleStatusReport(Landroid/os/AsyncResult;)V
    .registers 14
    .parameter "ar"

    .prologue
    const/4 v11, 0x1

    .line 177
    iget-object v5, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    .line 178
    .local v5, pduString:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/internal/telephony/gsm/SmsMessage;->newFromCDS(Ljava/lang/String;)Lcom/android/internal/telephony/gsm/SmsMessage;

    move-result-object v6

    .line 179
    .local v6, sms:Lcom/android/internal/telephony/gsm/SmsMessage;
    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/SmsMessage;->getStatus()I

    move-result v7

    .line 182
    .local v7, tpStatus:I
    if-eqz v6, :cond_4a

    .line 183
    iget v4, v6, Lcom/android/internal/telephony/SmsMessageBase;->messageRef:I

    .line 184
    .local v4, messageRef:I
    const/4 v2, 0x0

    .local v2, i:I
    iget-object v9, p0, Lcom/android/internal/telephony/SMSDispatcher;->deliveryPendingList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, count:I
    :goto_18
    if-ge v2, v0, :cond_4a

    .line 185
    iget-object v9, p0, Lcom/android/internal/telephony/SMSDispatcher;->deliveryPendingList:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .line 186
    .local v8, tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    iget v9, v8, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageRef:I

    if-ne v9, v4, :cond_4f

    .line 188
    const/16 v9, 0x40

    if-ge v7, v9, :cond_2e

    const/16 v9, 0x20

    if-ge v7, v9, :cond_33

    .line 189
    :cond_2e
    iget-object v9, p0, Lcom/android/internal/telephony/SMSDispatcher;->deliveryPendingList:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 191
    :cond_33
    iget-object v3, v8, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDeliveryIntent:Landroid/app/PendingIntent;

    .line 192
    .local v3, intent:Landroid/app/PendingIntent;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 193
    .local v1, fillIn:Landroid/content/Intent;
    const-string/jumbo v9, "pdu"

    invoke-static {v5}, Lcom/android/internal/telephony/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 195
    :try_start_44
    iget-object v9, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const/4 v10, -0x1

    invoke-virtual {v3, v9, v10, v1}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_4a
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_44 .. :try_end_4a} :catch_52

    .line 203
    .end local v0           #count:I
    .end local v1           #fillIn:Landroid/content/Intent;
    .end local v2           #i:I
    .end local v3           #intent:Landroid/app/PendingIntent;
    .end local v4           #messageRef:I
    .end local v8           #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_4a
    :goto_4a
    const/4 v9, 0x0

    invoke-virtual {p0, v11, v11, v9}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->acknowledgeLastIncomingSms(ZILandroid/os/Message;)V

    .line 204
    return-void

    .line 184
    .restart local v0       #count:I
    .restart local v2       #i:I
    .restart local v4       #messageRef:I
    .restart local v8       #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_4f
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 196
    .restart local v1       #fillIn:Landroid/content/Intent;
    .restart local v3       #intent:Landroid/app/PendingIntent;
    :catch_52
    move-exception v9

    goto :goto_4a
.end method

.method protected sendData(Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .registers 10
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter "destPort"
    .parameter "data"
    .parameter "sentIntent"
    .parameter "deliveryIntent"

    .prologue
    .line 319
    if-eqz p6, :cond_f

    const/4 v1, 0x1

    :goto_3
    invoke-static {p2, p1, p3, p4, v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;I[BZ)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v0

    .line 321
    .local v0, pdu:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    iget-object v1, v0, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedScAddress:[B

    iget-object v2, v0, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedMessage:[B

    invoke-virtual {p0, v1, v2, p5, p6}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->sendRawPdu([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 322
    return-void

    .line 319
    .end local v0           #pdu:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    :cond_f
    const/4 v1, 0x0

    goto :goto_3
.end method

.method protected sendMultipartSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .registers 9
    .parameter "tracker"

    .prologue
    .line 693
    iget-object v6, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mData:Ljava/util/HashMap;

    .line 695
    .local v6, map:Ljava/util/HashMap;
    const-string v0, "destination"

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 696
    .local v1, destinationAddress:Ljava/lang/String;
    const-string/jumbo v0, "scaddress"

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 698
    .local v2, scAddress:Ljava/lang/String;
    const-string/jumbo v0, "parts"

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 699
    .local v3, parts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string/jumbo v0, "sentIntents"

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 700
    .local v4, sentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    const-string v0, "deliveryIntents"

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .local v5, deliveryIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    move-object v0, p0

    .line 702
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->sendMultipartTextWithPermit(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 705
    return-void
.end method

.method protected sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 26
    .parameter "destinationAddress"
    .parameter "scAddress"
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 401
    .local p3, parts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, sentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, deliveryIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    invoke-static {}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->getNextConcatenatedRef()I

    move-result v5

    move v0, v5

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    .line 402
    .local v17, refNumber:I
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 403
    .local v15, msgCount:I
    const/4 v10, 0x0

    .line 405
    .local v10, encoding:I
    sput v15, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mRemainingMessages:I

    .line 407
    const/4 v14, 0x0

    .local v14, i:I
    :goto_11
    if-ge v14, v15, :cond_2f

    .line 408
    move-object/from16 v0, p3

    move v1, v14

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/android/internal/telephony/gsm/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-result-object v13

    .line 409
    .local v13, details:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    iget v5, v13, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    if-eq v10, v5, :cond_2c

    if-eqz v10, :cond_2a

    const/4 v5, 0x1

    if-ne v10, v5, :cond_2c

    .line 412
    :cond_2a
    iget v10, v13, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    .line 407
    :cond_2c
    add-int/lit8 v14, v14, 0x1

    goto :goto_11

    .line 416
    .end local v13           #details:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    :cond_2f
    const/4 v14, 0x0

    :goto_30
    if-ge v14, v15, :cond_a7

    .line 417
    new-instance v11, Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    invoke-direct {v11}, Lcom/android/internal/telephony/SmsHeader$ConcatRef;-><init>()V

    .line 418
    .local v11, concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    move/from16 v0, v17

    move-object v1, v11

    iput v0, v1, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    .line 419
    add-int/lit8 v5, v14, 0x1

    iput v5, v11, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    .line 420
    iput v15, v11, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    .line 427
    const/4 v5, 0x1

    iput-boolean v5, v11, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->isEightBits:Z

    .line 428
    new-instance v19, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct/range {v19 .. v19}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .line 429
    .local v19, smsHeader:Lcom/android/internal/telephony/SmsHeader;
    move-object v0, v11

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    .line 431
    const/16 v18, 0x0

    .line 432
    .local v18, sentIntent:Landroid/app/PendingIntent;
    if-eqz p4, :cond_62

    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v5, v14, :cond_62

    .line 433
    move-object/from16 v0, p4

    move v1, v14

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    .end local v18           #sentIntent:Landroid/app/PendingIntent;
    check-cast v18, Landroid/app/PendingIntent;

    .line 436
    .restart local v18       #sentIntent:Landroid/app/PendingIntent;
    :cond_62
    const/4 v12, 0x0

    .line 437
    .local v12, deliveryIntent:Landroid/app/PendingIntent;
    if-eqz p5, :cond_74

    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v5, v14, :cond_74

    .line 438
    move-object/from16 v0, p5

    move v1, v14

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    .end local v12           #deliveryIntent:Landroid/app/PendingIntent;
    check-cast v12, Landroid/app/PendingIntent;

    .line 441
    .restart local v12       #deliveryIntent:Landroid/app/PendingIntent;
    :cond_74
    move-object/from16 v0, p3

    move v1, v14

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    if-eqz v12, :cond_a4

    const/4 v5, 0x1

    move v8, v5

    :goto_81
    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object v9

    move-object/from16 v5, p2

    move-object/from16 v6, p1

    invoke-static/range {v5 .. v10}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BI)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v16

    .line 445
    .local v16, pdus:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedScAddress:[B

    move-object v5, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedMessage:[B

    move-object v6, v0

    move-object/from16 v0, p0

    move-object v1, v5

    move-object v2, v6

    move-object/from16 v3, v18

    move-object v4, v12

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->sendRawPdu([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 416
    add-int/lit8 v14, v14, 0x1

    goto :goto_30

    .line 441
    .end local v16           #pdus:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    :cond_a4
    const/4 v5, 0x0

    move v8, v5

    goto :goto_81

    .line 447
    .end local v11           #concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    .end local v12           #deliveryIntent:Landroid/app/PendingIntent;
    .end local v18           #sentIntent:Landroid/app/PendingIntent;
    .end local v19           #smsHeader:Lcom/android/internal/telephony/SmsHeader;
    :cond_a7
    return-void
.end method

.method protected sendMultipartTextwithOptions(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;ZIII)V
    .registers 35
    .parameter "destinationAddress"
    .parameter "scAddress"
    .parameter
    .parameter
    .parameter
    .parameter "replyPath"
    .parameter "expiry"
    .parameter "serviceType"
    .parameter "encodingType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;ZIII)V"
        }
    .end annotation

    .prologue
    .line 455
    .local p3, parts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, sentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, deliveryIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    invoke-static {}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->getNextConcatenatedRef()I

    move-result v5

    move v0, v5

    and-int/lit16 v0, v0, 0xff

    move/from16 v22, v0

    .line 457
    .local v22, refNumber:I
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v5

    sput v5, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mRemainingMessages:I

    .line 459
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v19

    .line 460
    .local v19, msgCount:I
    const/16 v17, 0x0

    .line 462
    .local v17, encoding:I
    const/16 v18, 0x0

    .local v18, i:I
    :goto_17
    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_47

    .line 463
    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/android/internal/telephony/gsm/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-result-object v16

    .line 464
    .local v16, details:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    move v5, v0

    move/from16 v0, v17

    move v1, v5

    if-eq v0, v1, :cond_44

    if-eqz v17, :cond_3e

    const/4 v5, 0x1

    move/from16 v0, v17

    move v1, v5

    if-ne v0, v1, :cond_44

    .line 467
    :cond_3e
    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    move/from16 v17, v0

    .line 462
    :cond_44
    add-int/lit8 v18, v18, 0x1

    goto :goto_17

    .line 472
    .end local v16           #details:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    :cond_47
    const/16 v20, 0x0

    .line 492
    .local v20, nationalLanguageIE:I
    const/16 v18, 0x0

    :goto_4b
    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_e7

    .line 493
    new-instance v14, Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    invoke-direct {v14}, Lcom/android/internal/telephony/SmsHeader$ConcatRef;-><init>()V

    .line 494
    .local v14, concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    move/from16 v0, v22

    move-object v1, v14

    iput v0, v1, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    .line 495
    add-int/lit8 v5, v18, 0x1

    iput v5, v14, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    .line 496
    move/from16 v0, v19

    move-object v1, v14

    iput v0, v1, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    .line 504
    const/4 v5, 0x1

    iput-boolean v5, v14, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->isEightBits:Z

    .line 506
    new-instance v24, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct/range {v24 .. v24}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .line 512
    .local v24, smsHeader:Lcom/android/internal/telephony/SmsHeader;
    const/4 v5, 0x0

    sput v5, Lcom/android/internal/telephony/SmsHeader;->nationalLanguageSingleShiftTableIdentifierCode:I

    .line 515
    move-object v0, v14

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    .line 517
    const/16 v23, 0x0

    .line 518
    .local v23, sentIntent:Landroid/app/PendingIntent;
    if-eqz p4, :cond_8b

    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v0, v5

    move/from16 v1, v18

    if-le v0, v1, :cond_8b

    .line 519
    move-object/from16 v0, p4

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    .end local v23           #sentIntent:Landroid/app/PendingIntent;
    check-cast v23, Landroid/app/PendingIntent;

    .line 522
    .restart local v23       #sentIntent:Landroid/app/PendingIntent;
    :cond_8b
    const/4 v15, 0x0

    .line 523
    .local v15, deliveryIntent:Landroid/app/PendingIntent;
    if-eqz p5, :cond_a1

    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v0, v5

    move/from16 v1, v18

    if-le v0, v1, :cond_a1

    .line 524
    move-object/from16 v0, p5

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    .end local v15           #deliveryIntent:Landroid/app/PendingIntent;
    check-cast v15, Landroid/app/PendingIntent;

    .line 527
    .restart local v15       #deliveryIntent:Landroid/app/PendingIntent;
    :cond_a1
    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    if-eqz v15, :cond_e1

    const/4 v5, 0x1

    move v8, v5

    :goto_af
    invoke-static/range {v24 .. v24}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object v9

    const/4 v5, 0x3

    move/from16 v0, v17

    move v1, v5

    if-ne v0, v1, :cond_e4

    const/4 v5, 0x1

    move v13, v5

    :goto_bb
    move-object/from16 v5, p2

    move-object/from16 v6, p1

    move/from16 v10, p6

    move/from16 v11, p7

    move/from16 v12, p8

    invoke-static/range {v5 .. v13}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BZIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v21

    .line 531
    .local v21, pdus:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedScAddress:[B

    move-object v5, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedMessage:[B

    move-object v6, v0

    move-object/from16 v0, p0

    move-object v1, v5

    move-object v2, v6

    move-object/from16 v3, v23

    move-object v4, v15

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->sendRawPdu([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 492
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_4b

    .line 527
    .end local v21           #pdus:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    :cond_e1
    const/4 v5, 0x0

    move v8, v5

    goto :goto_af

    :cond_e4
    move/from16 v13, p9

    goto :goto_bb

    .line 533
    .end local v14           #concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    .end local v15           #deliveryIntent:Landroid/app/PendingIntent;
    .end local v23           #sentIntent:Landroid/app/PendingIntent;
    .end local v24           #smsHeader:Lcom/android/internal/telephony/SmsHeader;
    :cond_e7
    return-void
.end method

.method protected sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .registers 10
    .parameter "tracker"

    .prologue
    .line 659
    iget-object v1, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mData:Ljava/util/HashMap;

    .line 661
    .local v1, map:Ljava/util/HashMap;
    const-string/jumbo v5, "smsc"

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    move-object v0, v5

    check-cast v0, [B

    move-object v4, v0

    .line 662
    .local v4, smsc:[B
    const-string/jumbo v5, "pdu"

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    move-object v0, v5

    check-cast v0, [B

    move-object v2, v0

    .line 664
    .local v2, pdu:[B
    const/4 v5, 0x2

    invoke-virtual {p0, v5, p1}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 665
    .local v3, reply:Landroid/os/Message;
    iget-object v5, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {v4}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-static {v2}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7, v3}, Lcom/android/internal/telephony/CommandsInterface;->sendSMS(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 667
    return-void
.end method

.method protected sendSmsForMobileTracker(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .registers 10
    .parameter "tracker"

    .prologue
    .line 672
    iget-object v1, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mData:Ljava/util/HashMap;

    .line 674
    .local v1, map:Ljava/util/HashMap;
    const-string/jumbo v5, "smsc"

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    move-object v0, v5

    check-cast v0, [B

    move-object v4, v0

    .line 675
    .local v4, smsc:[B
    const-string/jumbo v5, "pdu"

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    move-object v0, v5

    check-cast v0, [B

    move-object v2, v0

    .line 677
    .local v2, pdu:[B
    const/4 v5, 0x2

    invoke-virtual {p0, v5, p1}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 678
    .local v3, reply:Landroid/os/Message;
    iget-object v5, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {v4}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-static {v2}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7, v3}, Lcom/android/internal/telephony/CommandsInterface;->sendMobileTrackerSMS(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 680
    return-void
.end method

.method protected sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .registers 9
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter "text"
    .parameter "sentIntent"
    .parameter "deliveryIntent"

    .prologue
    .line 327
    if-eqz p5, :cond_f

    const/4 v1, 0x1

    :goto_3
    invoke-static {p2, p1, p3, v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v0

    .line 329
    .local v0, pdu:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    iget-object v1, v0, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedScAddress:[B

    iget-object v2, v0, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedMessage:[B

    invoke-virtual {p0, v1, v2, p4, p5}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->sendRawPdu([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 330
    return-void

    .line 327
    .end local v0           #pdu:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    :cond_f
    const/4 v1, 0x0

    goto :goto_3
.end method

.method protected sendTextForMobileTracker(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .registers 9
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter "text"
    .parameter "sentIntent"
    .parameter "deliveryIntent"

    .prologue
    .line 336
    if-eqz p5, :cond_f

    const/4 v1, 0x1

    :goto_3
    invoke-static {p2, p1, p3, v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v0

    .line 338
    .local v0, pdu:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    iget-object v1, v0, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedScAddress:[B

    iget-object v2, v0, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedMessage:[B

    invoke-virtual {p0, v1, v2, p4, p5}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->sendRawPduForMobileTracker([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 339
    return-void

    .line 336
    .end local v0           #pdu:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    :cond_f
    const/4 v1, 0x0

    goto :goto_3
.end method

.method protected sendTextwithOptions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZIII)V
    .registers 26
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter "text"
    .parameter "sentIntent"
    .parameter "deliveryIntent"
    .parameter "replyPath"
    .parameter "expiry"
    .parameter "serviceType"
    .parameter "encodingType"

    .prologue
    .line 350
    const/4 v14, 0x0

    .line 356
    .local v14, nationalLanguageIE:I
    const/4 v13, 0x1

    .line 388
    .local v13, encoding:I
    if-eqz p5, :cond_28

    const/4 v5, 0x1

    move v8, v5

    :goto_6
    move-object/from16 v5, p2

    move-object/from16 v6, p1

    move-object/from16 v7, p3

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    invoke-static/range {v5 .. v12}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v15

    .line 390
    .local v15, pdu:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    iget-object v5, v15, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedScAddress:[B

    iget-object v6, v15, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedMessage:[B

    move-object/from16 v0, p0

    move-object v1, v5

    move-object v2, v6

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->sendRawPdu([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 393
    return-void

    .line 388
    .end local v15           #pdu:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    :cond_28
    const/4 v5, 0x0

    move v8, v5

    goto :goto_6
.end method

.method protected setCellBroadcastConfig([ILandroid/os/Message;)V
    .registers 5
    .parameter "configValuesArray"
    .parameter "response"

    .prologue
    .line 732
    const-string v0, "GSM"

    const-string v1, "Error! The functionality cell broadcast sms is not implemented for GSM."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    invoke-virtual {p2}, Landroid/os/Message;->recycle()V

    .line 734
    return-void
.end method
