.class abstract Lcom/android/internal/telephony/gsm/stk/ValueParser;
.super Ljava/lang/Object;
.source "ValueParser.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static retrieveAddress(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)Ljava/lang/String;
    .registers 7
    .parameter "ctlv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/gsm/stk/ResultException;
        }
    .end annotation

    .prologue
    .line 295
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getRawValue()[B

    move-result-object v2

    .line 296
    .local v2, rawValue:[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getValueIndex()I

    move-result v3

    .line 297
    .local v3, valueIndex:I
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getLength()I

    move-result v1

    .line 298
    .local v1, length:I
    if-eqz v1, :cond_1c

    .line 300
    :try_start_e
    invoke-static {v2, v3, v1}, Lcom/android/internal/telephony/IccUtils;->SetupCallbcdToString([BII)Ljava/lang/String;
    :try_end_11
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_e .. :try_end_11} :catch_13

    move-result-object v4

    .line 306
    :goto_12
    return-object v4

    .line 302
    :catch_13
    move-exception v0

    .line 303
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    new-instance v4, Lcom/android/internal/telephony/gsm/stk/ResultException;

    sget-object v5, Lcom/android/internal/telephony/gsm/stk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw v4

    .line 306
    .end local v0           #e:Ljava/lang/IndexOutOfBoundsException;
    :cond_1c
    const/4 v4, 0x0

    goto :goto_12
.end method

.method static retrieveAlphaId(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)Ljava/lang/String;
    .registers 7
    .parameter "ctlv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/gsm/stk/ResultException;
        }
    .end annotation

    .prologue
    .line 280
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getRawValue()[B

    move-result-object v2

    .line 281
    .local v2, rawValue:[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getValueIndex()I

    move-result v3

    .line 282
    .local v3, valueIndex:I
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getLength()I

    move-result v1

    .line 283
    .local v1, length:I
    if-eqz v1, :cond_1c

    .line 285
    :try_start_e
    invoke-static {v2, v3, v1}, Lcom/android/internal/telephony/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;
    :try_end_11
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_e .. :try_end_11} :catch_13

    move-result-object v4

    .line 291
    :goto_12
    return-object v4

    .line 287
    :catch_13
    move-exception v0

    .line 288
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    new-instance v4, Lcom/android/internal/telephony/gsm/stk/ResultException;

    sget-object v5, Lcom/android/internal/telephony/gsm/stk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw v4

    .line 291
    .end local v0           #e:Ljava/lang/IndexOutOfBoundsException;
    :cond_1c
    const/4 v4, 0x0

    goto :goto_12
.end method

.method static retrieveBearerDescription(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)Lcom/android/internal/telephony/gsm/stk/BearerDescription;
    .registers 12
    .parameter "ctlv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/gsm/stk/ResultException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    const-string v9, "ValueParser"

    .line 711
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getRawValue()[B

    move-result-object v3

    .line 712
    .local v3, rawValue:[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getValueIndex()I

    move-result v4

    .line 713
    .local v4, valueIndex:I
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getLength()I

    move-result v2

    .line 715
    .local v2, length:I
    new-instance v0, Lcom/android/internal/telephony/gsm/stk/BearerDescription;

    invoke-direct {v0}, Lcom/android/internal/telephony/gsm/stk/BearerDescription;-><init>()V

    .line 717
    .local v0, bearerDesc:Lcom/android/internal/telephony/gsm/stk/BearerDescription;
    add-int/lit8 v5, v4, 0x1

    .end local v4           #valueIndex:I
    .local v5, valueIndex:I
    :try_start_16
    aget-byte v6, v3, v4

    iput-byte v6, v0, Lcom/android/internal/telephony/gsm/stk/BearerDescription;->bearerType:B

    .line 718
    const-string v6, "ValueParser"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "retrieveBearerDescription: Bearer Type = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-byte v8, v0, Lcom/android/internal/telephony/gsm/stk/BearerDescription;->bearerType:B

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 719
    iget-byte v6, v0, Lcom/android/internal/telephony/gsm/stk/BearerDescription;->bearerType:B

    packed-switch v6, :pswitch_data_130

    .line 763
    :pswitch_3a
    const-string v6, "ValueParser"

    const-string/jumbo v7, "retrieveBearerDescription: Bearer Type not Supported"

    invoke-static {v6, v7}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 764
    const-string v6, "ValueParser"

    const-string/jumbo v7, "retrieveBearerDescription: BearerDescription is not among the five"

    invoke-static {v6, v7}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v5

    .end local v5           #valueIndex:I
    .restart local v4       #valueIndex:I
    :goto_4b
    move-object v6, v0

    .line 775
    :goto_4c
    return-object v6

    .line 721
    .end local v4           #valueIndex:I
    .restart local v5       #valueIndex:I
    :pswitch_4d
    new-instance v6, Lcom/android/internal/telephony/gsm/stk/BearerCSD;

    invoke-direct {v6}, Lcom/android/internal/telephony/gsm/stk/BearerCSD;-><init>()V

    iput-object v6, v0, Lcom/android/internal/telephony/gsm/stk/BearerDescription;->bearerCSD:Lcom/android/internal/telephony/gsm/stk/BearerCSD;

    .line 722
    iget-object v6, v0, Lcom/android/internal/telephony/gsm/stk/BearerDescription;->bearerCSD:Lcom/android/internal/telephony/gsm/stk/BearerCSD;
    :try_end_56
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_16 .. :try_end_56} :catch_12b
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_56} :catch_11b

    add-int/lit8 v4, v5, 0x1

    .end local v5           #valueIndex:I
    .restart local v4       #valueIndex:I
    :try_start_58
    aget-byte v7, v3, v5

    iput v7, v6, Lcom/android/internal/telephony/gsm/stk/BearerCSD;->dataRate:I

    .line 723
    iget-object v6, v0, Lcom/android/internal/telephony/gsm/stk/BearerDescription;->bearerCSD:Lcom/android/internal/telephony/gsm/stk/BearerCSD;
    :try_end_5e
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_58 .. :try_end_5e} :catch_7b
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_5e} :catch_128

    add-int/lit8 v5, v4, 0x1

    .end local v4           #valueIndex:I
    .restart local v5       #valueIndex:I
    :try_start_60
    aget-byte v7, v3, v4

    iput v7, v6, Lcom/android/internal/telephony/gsm/stk/BearerCSD;->bearerService:I

    .line 724
    iget-object v6, v0, Lcom/android/internal/telephony/gsm/stk/BearerDescription;->bearerCSD:Lcom/android/internal/telephony/gsm/stk/BearerCSD;
    :try_end_66
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_60 .. :try_end_66} :catch_12b
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_66} :catch_11b

    add-int/lit8 v4, v5, 0x1

    .end local v5           #valueIndex:I
    .restart local v4       #valueIndex:I
    :try_start_68
    aget-byte v7, v3, v5

    iput v7, v6, Lcom/android/internal/telephony/gsm/stk/BearerCSD;->connectionElement:I

    .line 725
    const/4 v6, 0x0

    iput-object v6, v0, Lcom/android/internal/telephony/gsm/stk/BearerDescription;->bearerGPRS:Lcom/android/internal/telephony/gsm/stk/BearerGPRS;

    .line 726
    const/4 v6, 0x0

    iput-boolean v6, v0, Lcom/android/internal/telephony/gsm/stk/BearerDescription;->bearerDefault:Z

    .line 727
    const-string v6, "ValueParser"

    const-string/jumbo v7, "retrieveBearerDescription: Bearer Type = CSD"

    invoke-static {v6, v7}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7a
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_68 .. :try_end_7a} :catch_7b
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_7a} :catch_128

    goto :goto_4b

    .line 769
    :catch_7b
    move-exception v6

    move-object v1, v6

    .line 770
    .local v1, e:Ljava/lang/IndexOutOfBoundsException;
    :goto_7d
    const-string v6, "ValueParser"

    const-string v6, "ResultException: retrieveBearerDescription"

    invoke-static {v9, v6}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 771
    new-instance v6, Lcom/android/internal/telephony/gsm/stk/ResultException;

    sget-object v7, Lcom/android/internal/telephony/gsm/stk/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct {v6, v7}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw v6

    .line 730
    .end local v1           #e:Ljava/lang/IndexOutOfBoundsException;
    .end local v4           #valueIndex:I
    .restart local v5       #valueIndex:I
    :pswitch_8c
    :try_start_8c
    new-instance v6, Lcom/android/internal/telephony/gsm/stk/BearerGPRS;

    invoke-direct {v6}, Lcom/android/internal/telephony/gsm/stk/BearerGPRS;-><init>()V

    iput-object v6, v0, Lcom/android/internal/telephony/gsm/stk/BearerDescription;->bearerGPRS:Lcom/android/internal/telephony/gsm/stk/BearerGPRS;

    .line 731
    iget-object v6, v0, Lcom/android/internal/telephony/gsm/stk/BearerDescription;->bearerGPRS:Lcom/android/internal/telephony/gsm/stk/BearerGPRS;
    :try_end_95
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_8c .. :try_end_95} :catch_12b
    .catch Ljava/lang/Exception; {:try_start_8c .. :try_end_95} :catch_11b

    add-int/lit8 v4, v5, 0x1

    .end local v5           #valueIndex:I
    .restart local v4       #valueIndex:I
    :try_start_97
    aget-byte v7, v3, v5

    iput v7, v6, Lcom/android/internal/telephony/gsm/stk/BearerGPRS;->precedenceClass:I

    .line 732
    iget-object v6, v0, Lcom/android/internal/telephony/gsm/stk/BearerDescription;->bearerGPRS:Lcom/android/internal/telephony/gsm/stk/BearerGPRS;
    :try_end_9d
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_97 .. :try_end_9d} :catch_7b
    .catch Ljava/lang/Exception; {:try_start_97 .. :try_end_9d} :catch_128

    add-int/lit8 v5, v4, 0x1

    .end local v4           #valueIndex:I
    .restart local v5       #valueIndex:I
    :try_start_9f
    aget-byte v7, v3, v4

    iput v7, v6, Lcom/android/internal/telephony/gsm/stk/BearerGPRS;->delayClass:I

    .line 733
    iget-object v6, v0, Lcom/android/internal/telephony/gsm/stk/BearerDescription;->bearerGPRS:Lcom/android/internal/telephony/gsm/stk/BearerGPRS;
    :try_end_a5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_9f .. :try_end_a5} :catch_12b
    .catch Ljava/lang/Exception; {:try_start_9f .. :try_end_a5} :catch_11b

    add-int/lit8 v4, v5, 0x1

    .end local v5           #valueIndex:I
    .restart local v4       #valueIndex:I
    :try_start_a7
    aget-byte v7, v3, v5

    iput v7, v6, Lcom/android/internal/telephony/gsm/stk/BearerGPRS;->reliabilityClass:I

    .line 734
    iget-object v6, v0, Lcom/android/internal/telephony/gsm/stk/BearerDescription;->bearerGPRS:Lcom/android/internal/telephony/gsm/stk/BearerGPRS;
    :try_end_ad
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_a7 .. :try_end_ad} :catch_7b
    .catch Ljava/lang/Exception; {:try_start_a7 .. :try_end_ad} :catch_128

    add-int/lit8 v5, v4, 0x1

    .end local v4           #valueIndex:I
    .restart local v5       #valueIndex:I
    :try_start_af
    aget-byte v7, v3, v4

    iput v7, v6, Lcom/android/internal/telephony/gsm/stk/BearerGPRS;->peakThroughputClass:I

    .line 735
    iget-object v6, v0, Lcom/android/internal/telephony/gsm/stk/BearerDescription;->bearerGPRS:Lcom/android/internal/telephony/gsm/stk/BearerGPRS;
    :try_end_b5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_af .. :try_end_b5} :catch_12b
    .catch Ljava/lang/Exception; {:try_start_af .. :try_end_b5} :catch_11b

    add-int/lit8 v4, v5, 0x1

    .end local v5           #valueIndex:I
    .restart local v4       #valueIndex:I
    :try_start_b7
    aget-byte v7, v3, v5

    iput v7, v6, Lcom/android/internal/telephony/gsm/stk/BearerGPRS;->meanThroughputClass:I

    .line 736
    iget-object v6, v0, Lcom/android/internal/telephony/gsm/stk/BearerDescription;->bearerGPRS:Lcom/android/internal/telephony/gsm/stk/BearerGPRS;
    :try_end_bd
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_b7 .. :try_end_bd} :catch_7b
    .catch Ljava/lang/Exception; {:try_start_b7 .. :try_end_bd} :catch_128

    add-int/lit8 v5, v4, 0x1

    .end local v4           #valueIndex:I
    .restart local v5       #valueIndex:I
    :try_start_bf
    aget-byte v7, v3, v4

    iput v7, v6, Lcom/android/internal/telephony/gsm/stk/BearerGPRS;->packetDataProtocolType:I

    .line 737
    const/4 v6, 0x0

    iput-object v6, v0, Lcom/android/internal/telephony/gsm/stk/BearerDescription;->bearerCSD:Lcom/android/internal/telephony/gsm/stk/BearerCSD;

    .line 738
    const/4 v6, 0x0

    iput-boolean v6, v0, Lcom/android/internal/telephony/gsm/stk/BearerDescription;->bearerDefault:Z

    .line 739
    const-string v6, "ValueParser"

    const-string/jumbo v7, "retrieveBearerDescription: Bearer Type = GPRS"

    invoke-static {v6, v7}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v5

    .line 740
    .end local v5           #valueIndex:I
    .restart local v4       #valueIndex:I
    goto/16 :goto_4b

    .line 742
    .end local v4           #valueIndex:I
    .restart local v5       #valueIndex:I
    :pswitch_d4
    const/4 v6, 0x3

    iput-byte v6, v0, Lcom/android/internal/telephony/gsm/stk/BearerDescription;->bearerType:B

    .line 743
    const/4 v6, 0x0

    iput-object v6, v0, Lcom/android/internal/telephony/gsm/stk/BearerDescription;->bearerGPRS:Lcom/android/internal/telephony/gsm/stk/BearerGPRS;

    .line 744
    const/4 v6, 0x0

    iput-object v6, v0, Lcom/android/internal/telephony/gsm/stk/BearerDescription;->bearerCSD:Lcom/android/internal/telephony/gsm/stk/BearerCSD;

    .line 745
    const/4 v6, 0x1

    iput-boolean v6, v0, Lcom/android/internal/telephony/gsm/stk/BearerDescription;->bearerDefault:Z

    .line 746
    const-string v6, "ValueParser"

    const-string/jumbo v7, "retrieveBearerDescription: Bearer Type = Default"

    invoke-static {v6, v7}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v5

    .line 747
    .end local v5           #valueIndex:I
    .restart local v4       #valueIndex:I
    goto/16 :goto_4b

    .line 749
    .end local v4           #valueIndex:I
    .restart local v5       #valueIndex:I
    :pswitch_eb
    const/16 v6, 0xb

    iput-byte v6, v0, Lcom/android/internal/telephony/gsm/stk/BearerDescription;->bearerType:B

    .line 750
    const/4 v6, 0x0

    iput-object v6, v0, Lcom/android/internal/telephony/gsm/stk/BearerDescription;->bearerGPRS:Lcom/android/internal/telephony/gsm/stk/BearerGPRS;

    .line 751
    const/4 v6, 0x0

    iput-object v6, v0, Lcom/android/internal/telephony/gsm/stk/BearerDescription;->bearerCSD:Lcom/android/internal/telephony/gsm/stk/BearerCSD;

    .line 752
    const/4 v6, 0x0

    iput-boolean v6, v0, Lcom/android/internal/telephony/gsm/stk/BearerDescription;->bearerDefault:Z

    .line 753
    const-string v6, "ValueParser"

    const-string/jumbo v7, "retrieveBearerDescription: Bearer Type = BEARER_E_UTRAN"

    invoke-static {v6, v7}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v5

    .line 754
    .end local v5           #valueIndex:I
    .restart local v4       #valueIndex:I
    goto/16 :goto_4b

    .line 756
    .end local v4           #valueIndex:I
    .restart local v5       #valueIndex:I
    :pswitch_103
    const/16 v6, 0x8

    iput-byte v6, v0, Lcom/android/internal/telephony/gsm/stk/BearerDescription;->bearerType:B

    .line 757
    const/4 v6, 0x0

    iput-object v6, v0, Lcom/android/internal/telephony/gsm/stk/BearerDescription;->bearerGPRS:Lcom/android/internal/telephony/gsm/stk/BearerGPRS;

    .line 758
    const/4 v6, 0x0

    iput-object v6, v0, Lcom/android/internal/telephony/gsm/stk/BearerDescription;->bearerCSD:Lcom/android/internal/telephony/gsm/stk/BearerCSD;

    .line 759
    const/4 v6, 0x0

    iput-boolean v6, v0, Lcom/android/internal/telephony/gsm/stk/BearerDescription;->bearerDefault:Z

    .line 760
    const-string v6, "ValueParser"

    const-string/jumbo v7, "retrieveBearerDescription: Bearer Type = BEARER_CDMA"

    invoke-static {v6, v7}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_118
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_bf .. :try_end_118} :catch_12b
    .catch Ljava/lang/Exception; {:try_start_bf .. :try_end_118} :catch_11b

    move v4, v5

    .line 761
    .end local v5           #valueIndex:I
    .restart local v4       #valueIndex:I
    goto/16 :goto_4b

    .line 772
    .end local v4           #valueIndex:I
    .restart local v5       #valueIndex:I
    :catch_11b
    move-exception v6

    move-object v1, v6

    move v4, v5

    .line 773
    .end local v5           #valueIndex:I
    .local v1, e:Ljava/lang/Exception;
    .restart local v4       #valueIndex:I
    :goto_11e
    const-string v6, "ValueParser"

    const-string v6, "Unknown ResultException in retrieveBearerDescription: "

    invoke-static {v9, v6}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v6, v10

    .line 775
    goto/16 :goto_4c

    .line 772
    .end local v1           #e:Ljava/lang/Exception;
    :catch_128
    move-exception v6

    move-object v1, v6

    goto :goto_11e

    .line 769
    .end local v4           #valueIndex:I
    .restart local v5       #valueIndex:I
    :catch_12b
    move-exception v6

    move-object v1, v6

    move v4, v5

    .end local v5           #valueIndex:I
    .restart local v4       #valueIndex:I
    goto/16 :goto_7d

    .line 719
    :pswitch_data_130
    .packed-switch 0x1
        :pswitch_4d
        :pswitch_8c
        :pswitch_d4
        :pswitch_3a
        :pswitch_3a
        :pswitch_3a
        :pswitch_3a
        :pswitch_103
        :pswitch_3a
        :pswitch_3a
        :pswitch_eb
    .end packed-switch
.end method

.method static retrieveBufferSize(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)I
    .registers 12
    .parameter "ctlv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/gsm/stk/ResultException;
        }
    .end annotation

    .prologue
    const-string v10, "ValueParser"

    .line 789
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getRawValue()[B

    move-result-object v3

    .line 790
    .local v3, rawValue:[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getValueIndex()I

    move-result v6

    .line 791
    .local v6, valueIndex:I
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getLength()I

    move-result v2

    .line 792
    .local v2, length:I
    const-string v7, "ValueParser"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "retrieveBufferSize: valueIndex , Length = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " , "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 794
    :try_start_31
    aget-byte v7, v3, v6

    and-int/lit16 v1, v7, 0xff

    .line 795
    .local v1, firstByte:I
    add-int/lit8 v7, v6, 0x1

    aget-byte v7, v3, v7

    and-int/lit16 v5, v7, 0xff

    .line 796
    .local v5, secondByte:I
    shl-int/lit8 v7, v1, 0x8

    or-int v4, v7, v5

    .line 797
    .local v4, resultByte:I
    const-string v7, "ValueParser"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "retrieveBufferSize: buffer size = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_58
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_31 .. :try_end_58} :catch_5a
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_58} :catch_6b

    move v7, v4

    .line 806
    .end local v1           #firstByte:I
    .end local v4           #resultByte:I
    .end local v5           #secondByte:I
    :goto_59
    return v7

    .line 800
    :catch_5a
    move-exception v7

    move-object v0, v7

    .line 801
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    const-string v7, "ValueParser"

    const-string v7, "ResultException: retrieveBufferSize"

    invoke-static {v10, v7}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 802
    new-instance v7, Lcom/android/internal/telephony/gsm/stk/ResultException;

    sget-object v8, Lcom/android/internal/telephony/gsm/stk/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct {v7, v8}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw v7

    .line 803
    .end local v0           #e:Ljava/lang/IndexOutOfBoundsException;
    :catch_6b
    move-exception v7

    move-object v0, v7

    .line 804
    .local v0, e:Ljava/lang/Exception;
    const-string v7, "ValueParser"

    const-string v7, "Unknown ResultException in retrieveBufferSize: "

    invoke-static {v10, v7}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 806
    const/4 v7, -0x1

    goto :goto_59
.end method

.method static retrieveChannelData(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)[B
    .registers 12
    .parameter "ctlv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/gsm/stk/ResultException;
        }
    .end annotation

    .prologue
    const-string v10, "ValueParser"

    .line 964
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getRawValue()[B

    move-result-object v3

    .line 965
    .local v3, rawValue:[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getValueIndex()I

    move-result v5

    .line 966
    .local v5, valueIndex:I
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getLength()I

    move-result v2

    .line 968
    .local v2, length:I
    const-string v7, "ValueParser"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "retrieveChannelData : value Index , length "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " , "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 970
    :try_start_31
    const-string v7, "ValueParser"

    const-string/jumbo v8, "retrieveChannelData: beginning Byte array copy"

    invoke-static {v7, v8}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 971
    new-array v4, v2, [B

    .line 972
    .local v4, tempChannelData:[B
    const/4 v1, 0x0

    .local v1, i:I
    move v6, v5

    .end local v5           #valueIndex:I
    .local v6, valueIndex:I
    :goto_3d
    if-ge v1, v2, :cond_49

    .line 973
    add-int/lit8 v5, v6, 0x1

    .end local v6           #valueIndex:I
    .restart local v5       #valueIndex:I
    aget-byte v7, v3, v6

    aput-byte v7, v4, v1
    :try_end_45
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_31 .. :try_end_45} :catch_6b
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_45} :catch_7c

    .line 972
    add-int/lit8 v1, v1, 0x1

    move v6, v5

    .end local v5           #valueIndex:I
    .restart local v6       #valueIndex:I
    goto :goto_3d

    .line 976
    :cond_49
    :try_start_49
    const-string v7, "ValueParser"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "retrieveChannelData: tempChannelData = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " Byte Array Copy Complete"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_68
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_49 .. :try_end_68} :catch_8b
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_68} :catch_87

    move v5, v6

    .end local v6           #valueIndex:I
    .restart local v5       #valueIndex:I
    move-object v7, v4

    .line 984
    .end local v1           #i:I
    .end local v4           #tempChannelData:[B
    :goto_6a
    return-object v7

    .line 978
    :catch_6b
    move-exception v7

    move-object v0, v7

    .line 979
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    :goto_6d
    const-string v7, "ValueParser"

    const-string v7, "ResultException: retrieveChannelData"

    invoke-static {v10, v7}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 980
    new-instance v7, Lcom/android/internal/telephony/gsm/stk/ResultException;

    sget-object v8, Lcom/android/internal/telephony/gsm/stk/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct {v7, v8}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw v7

    .line 981
    .end local v0           #e:Ljava/lang/IndexOutOfBoundsException;
    :catch_7c
    move-exception v7

    move-object v0, v7

    .line 982
    .local v0, e:Ljava/lang/Exception;
    :goto_7e
    const-string v7, "ValueParser"

    const-string v7, "Unknown ResultException in retrieveChannelData: "

    invoke-static {v10, v7}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 984
    const/4 v7, 0x0

    goto :goto_6a

    .line 981
    .end local v0           #e:Ljava/lang/Exception;
    .end local v5           #valueIndex:I
    .restart local v1       #i:I
    .restart local v4       #tempChannelData:[B
    .restart local v6       #valueIndex:I
    :catch_87
    move-exception v7

    move-object v0, v7

    move v5, v6

    .end local v6           #valueIndex:I
    .restart local v5       #valueIndex:I
    goto :goto_7e

    .line 978
    .end local v5           #valueIndex:I
    .restart local v6       #valueIndex:I
    :catch_8b
    move-exception v7

    move-object v0, v7

    move v5, v6

    .end local v6           #valueIndex:I
    .restart local v5       #valueIndex:I
    goto :goto_6d
.end method

.method static retrieveChannelDataLength(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)B
    .registers 8
    .parameter "ctlv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/gsm/stk/ResultException;
        }
    .end annotation

    .prologue
    const-string v6, "ValueParser"

    .line 939
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getRawValue()[B

    move-result-object v2

    .line 940
    .local v2, rawValue:[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getValueIndex()I

    move-result v3

    .line 941
    .local v3, valueIndex:I
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getLength()I

    move-result v1

    .line 942
    .local v1, length:I
    const-string v4, "ValueParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "retrieveChannelDataLength: valueIndex , Length = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 944
    :try_start_31
    aget-byte v4, v2, v3
    :try_end_33
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_31 .. :try_end_33} :catch_37
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_33} :catch_47

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    .line 951
    :goto_36
    return v4

    .line 945
    :catch_37
    move-exception v0

    .line 946
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    const-string v4, "ValueParser"

    const-string v4, " ResultException: retrieveChannelDataLength"

    invoke-static {v6, v4}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 947
    new-instance v4, Lcom/android/internal/telephony/gsm/stk/ResultException;

    sget-object v5, Lcom/android/internal/telephony/gsm/stk/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw v4

    .line 948
    .end local v0           #e:Ljava/lang/IndexOutOfBoundsException;
    :catch_47
    move-exception v0

    .line 949
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "ValueParser"

    const-string v4, "Unknown ResultException in retrieveChannelDataLength: "

    invoke-static {v6, v4}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 951
    const/4 v4, 0x0

    goto :goto_36
.end method

.method static retrieveCommandDetails(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)Lcom/android/internal/telephony/gsm/stk/CommandDetails;
    .registers 7
    .parameter "ctlv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/gsm/stk/ResultException;
        }
    .end annotation

    .prologue
    .line 44
    new-instance v0, Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    invoke-direct {v0}, Lcom/android/internal/telephony/gsm/stk/CommandDetails;-><init>()V

    .line 45
    .local v0, cmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getRawValue()[B

    move-result-object v2

    .line 46
    .local v2, rawValue:[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getValueIndex()I

    move-result v3

    .line 48
    .local v3, valueIndex:I
    :try_start_d
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->isComprehensionRequired()Z

    move-result v4

    iput-boolean v4, v0, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->compRequired:Z

    .line 49
    aget-byte v4, v2, v3

    and-int/lit16 v4, v4, 0xff

    iput v4, v0, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->commandNumber:I

    .line 50
    add-int/lit8 v4, v3, 0x1

    aget-byte v4, v2, v4

    and-int/lit16 v4, v4, 0xff

    iput v4, v0, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->typeOfCommand:I

    .line 51
    add-int/lit8 v4, v3, 0x2

    aget-byte v4, v2, v4

    and-int/lit16 v4, v4, 0xff

    iput v4, v0, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->commandQualifier:I
    :try_end_29
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_d .. :try_end_29} :catch_2a

    .line 52
    return-object v0

    .line 53
    :catch_2a
    move-exception v4

    move-object v1, v4

    .line 54
    .local v1, e:Ljava/lang/IndexOutOfBoundsException;
    new-instance v4, Lcom/android/internal/telephony/gsm/stk/ResultException;

    sget-object v5, Lcom/android/internal/telephony/gsm/stk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw v4
.end method

.method static retrieveDTMFstring(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)[B
    .registers 9
    .parameter "ctlv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/gsm/stk/ResultException;
        }
    .end annotation

    .prologue
    .line 366
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getRawValue()[B

    move-result-object v3

    .line 367
    .local v3, rawValue:[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getValueIndex()I

    move-result v4

    .line 368
    .local v4, valueIndex:I
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getLength()I

    move-result v2

    .line 370
    .local v2, length:I
    if-eqz v2, :cond_29

    .line 371
    add-int/lit8 v6, v2, 0x1

    new-array v0, v6, [B

    .line 372
    .local v0, dtmfString:[B
    const/4 v6, 0x0

    int-to-byte v7, v2

    aput-byte v7, v0, v6

    .line 373
    const/4 v1, 0x0

    .local v1, i:I
    move v5, v4

    .end local v4           #valueIndex:I
    .local v5, valueIndex:I
    :goto_18
    if-ge v1, v2, :cond_26

    .line 374
    add-int/lit8 v6, v1, 0x1

    add-int/lit8 v4, v5, 0x1

    .end local v5           #valueIndex:I
    .restart local v4       #valueIndex:I
    aget-byte v7, v3, v5

    aput-byte v7, v0, v6

    .line 373
    add-int/lit8 v1, v1, 0x1

    move v5, v4

    .end local v4           #valueIndex:I
    .restart local v5       #valueIndex:I
    goto :goto_18

    :cond_26
    move v4, v5

    .end local v5           #valueIndex:I
    .restart local v4       #valueIndex:I
    move-object v6, v0

    .line 378
    .end local v0           #dtmfString:[B
    .end local v1           #i:I
    :goto_28
    return-object v6

    :cond_29
    const/4 v6, 0x0

    goto :goto_28
.end method

.method static retrieveDataDestinationAddress(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)Lcom/android/internal/telephony/gsm/stk/DataDestinationAddress;
    .registers 15
    .parameter "ctlv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/gsm/stk/ResultException;
        }
    .end annotation

    .prologue
    const/4 v13, 0x0

    const-string v12, "ValueParser"

    .line 850
    new-instance v1, Lcom/android/internal/telephony/gsm/stk/DataDestinationAddress;

    invoke-direct {v1}, Lcom/android/internal/telephony/gsm/stk/DataDestinationAddress;-><init>()V

    .line 851
    .local v1, dataDestinationAddress:Lcom/android/internal/telephony/gsm/stk/DataDestinationAddress;
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getRawValue()[B

    move-result-object v5

    .line 852
    .local v5, rawValue:[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getValueIndex()I

    move-result v7

    .line 853
    .local v7, valueIndex:I
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getLength()I

    move-result v9

    const/4 v10, 0x1

    sub-int v4, v9, v10

    .line 854
    .local v4, length:I
    const-string v9, "ValueParser"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "retrieveDataDestinationAddress: valueIndex , Length = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " , "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v12, v9}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 855
    if-gtz v4, :cond_46

    .line 856
    const-string v9, "ValueParser"

    const-string/jumbo v9, "retrieveDataDestinationAddress: Length is 00. Supply Dynamic IP"

    invoke-static {v12, v9}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v9, v13

    .line 884
    :goto_45
    return-object v9

    .line 860
    :cond_46
    add-int/lit8 v8, v7, 0x1

    .end local v7           #valueIndex:I
    .local v8, valueIndex:I
    :try_start_48
    aget-byte v9, v5, v7

    iput-byte v9, v1, Lcom/android/internal/telephony/gsm/stk/DataDestinationAddress;->addressType:B

    .line 861
    const-string v9, "ValueParser"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "retrieveDataDestinationAddress: Address Type = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-byte v11, v1, Lcom/android/internal/telephony/gsm/stk/DataDestinationAddress;->addressType:B

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " beginning Byte array copy"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 862
    new-array v6, v4, [B
    :try_end_6f
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_48 .. :try_end_6f} :catch_cb
    .catch Ljava/net/UnknownHostException; {:try_start_48 .. :try_end_6f} :catch_dd
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_6f} :catch_ef

    .line 864
    .local v6, tempDataDestAddress:[B
    const/4 v3, 0x0

    .local v3, i:I
    :goto_70
    if-ge v3, v4, :cond_96

    .line 865
    add-int/lit8 v7, v8, 0x1

    .end local v8           #valueIndex:I
    .restart local v7       #valueIndex:I
    :try_start_74
    aget-byte v9, v5, v8

    aput-byte v9, v6, v3

    .line 866
    const-string v9, "ValueParser"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget-byte v11, v6, v3

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_92
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_74 .. :try_end_92} :catch_102
    .catch Ljava/net/UnknownHostException; {:try_start_74 .. :try_end_92} :catch_ff
    .catch Ljava/lang/Exception; {:try_start_74 .. :try_end_92} :catch_fc

    .line 864
    add-int/lit8 v3, v3, 0x1

    move v8, v7

    .end local v7           #valueIndex:I
    .restart local v8       #valueIndex:I
    goto :goto_70

    .line 868
    :cond_96
    :try_start_96
    const-string v9, "ValueParser"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "retrieveDataDestinationAddress: tempDataDestAddress = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " Byte array copy complete"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 870
    invoke-static {v6}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0

    .line 871
    .local v0, add:Ljava/net/InetAddress;
    const-string v9, "ValueParser"

    const-string/jumbo v10, "retrieveDataDestinationAddress : InetAddress retrieved "

    invoke-static {v9, v10}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 872
    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v9

    iput-object v9, v1, Lcom/android/internal/telephony/gsm/stk/DataDestinationAddress;->address:[B
    :try_end_c7
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_96 .. :try_end_c7} :catch_cb
    .catch Ljava/net/UnknownHostException; {:try_start_96 .. :try_end_c7} :catch_dd
    .catch Ljava/lang/Exception; {:try_start_96 .. :try_end_c7} :catch_ef

    move v7, v8

    .end local v8           #valueIndex:I
    .restart local v7       #valueIndex:I
    move-object v9, v1

    .line 874
    goto/16 :goto_45

    .line 875
    .end local v0           #add:Ljava/net/InetAddress;
    .end local v3           #i:I
    .end local v6           #tempDataDestAddress:[B
    .end local v7           #valueIndex:I
    .restart local v8       #valueIndex:I
    :catch_cb
    move-exception v9

    move-object v2, v9

    move v7, v8

    .line 876
    .end local v8           #valueIndex:I
    .local v2, e:Ljava/lang/IndexOutOfBoundsException;
    .restart local v7       #valueIndex:I
    :goto_ce
    const-string v9, "ValueParser"

    const-string v9, " ResultException: retrieveDataDestinationAddress - IndexOutOfBoundsException"

    invoke-static {v12, v9}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 877
    new-instance v9, Lcom/android/internal/telephony/gsm/stk/ResultException;

    sget-object v10, Lcom/android/internal/telephony/gsm/stk/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct {v9, v10}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw v9

    .line 878
    .end local v2           #e:Ljava/lang/IndexOutOfBoundsException;
    .end local v7           #valueIndex:I
    .restart local v8       #valueIndex:I
    :catch_dd
    move-exception v9

    move-object v2, v9

    move v7, v8

    .line 879
    .end local v8           #valueIndex:I
    .local v2, e:Ljava/net/UnknownHostException;
    .restart local v7       #valueIndex:I
    :goto_e0
    const-string v9, "ValueParser"

    const-string v9, " ResultException: retrieveDataDestinationAddress - UnknownHostException"

    invoke-static {v12, v9}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 880
    new-instance v9, Lcom/android/internal/telephony/gsm/stk/ResultException;

    sget-object v10, Lcom/android/internal/telephony/gsm/stk/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct {v9, v10}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw v9

    .line 881
    .end local v2           #e:Ljava/net/UnknownHostException;
    .end local v7           #valueIndex:I
    .restart local v8       #valueIndex:I
    :catch_ef
    move-exception v9

    move-object v2, v9

    move v7, v8

    .line 882
    .end local v8           #valueIndex:I
    .local v2, e:Ljava/lang/Exception;
    .restart local v7       #valueIndex:I
    :goto_f2
    const-string v9, "ValueParser"

    const-string v9, "Unknown ResultException in retrieveDataDestinationAddress: "

    invoke-static {v12, v9}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v9, v13

    .line 884
    goto/16 :goto_45

    .line 881
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v3       #i:I
    .restart local v6       #tempDataDestAddress:[B
    :catch_fc
    move-exception v9

    move-object v2, v9

    goto :goto_f2

    .line 878
    :catch_ff
    move-exception v9

    move-object v2, v9

    goto :goto_e0

    .line 875
    :catch_102
    move-exception v9

    move-object v2, v9

    goto :goto_ce
.end method

.method static retrieveDeviceIdentities(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)Lcom/android/internal/telephony/gsm/stk/DeviceIdentities;
    .registers 7
    .parameter "ctlv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/gsm/stk/ResultException;
        }
    .end annotation

    .prologue
    .line 69
    new-instance v0, Lcom/android/internal/telephony/gsm/stk/DeviceIdentities;

    invoke-direct {v0}, Lcom/android/internal/telephony/gsm/stk/DeviceIdentities;-><init>()V

    .line 70
    .local v0, devIds:Lcom/android/internal/telephony/gsm/stk/DeviceIdentities;
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getRawValue()[B

    move-result-object v2

    .line 71
    .local v2, rawValue:[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getValueIndex()I

    move-result v3

    .line 73
    .local v3, valueIndex:I
    :try_start_d
    aget-byte v4, v2, v3

    and-int/lit16 v4, v4, 0xff

    iput v4, v0, Lcom/android/internal/telephony/gsm/stk/DeviceIdentities;->sourceId:I

    .line 74
    add-int/lit8 v4, v3, 0x1

    aget-byte v4, v2, v4

    and-int/lit16 v4, v4, 0xff

    iput v4, v0, Lcom/android/internal/telephony/gsm/stk/DeviceIdentities;->destinationId:I
    :try_end_1b
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_d .. :try_end_1b} :catch_1c

    .line 75
    return-object v0

    .line 76
    :catch_1c
    move-exception v4

    move-object v1, v4

    .line 77
    .local v1, e:Ljava/lang/IndexOutOfBoundsException;
    new-instance v4, Lcom/android/internal/telephony/gsm/stk/ResultException;

    sget-object v5, Lcom/android/internal/telephony/gsm/stk/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw v4
.end method

.method static retrieveDuration(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)Lcom/android/internal/telephony/gsm/stk/Duration;
    .registers 8
    .parameter "ctlv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/gsm/stk/ResultException;
        }
    .end annotation

    .prologue
    .line 90
    const/4 v2, 0x0

    .line 91
    .local v2, timeInterval:I
    sget-object v3, Lcom/android/internal/telephony/gsm/stk/Duration$TimeUnit;->SECOND:Lcom/android/internal/telephony/gsm/stk/Duration$TimeUnit;

    .line 93
    .local v3, timeUnit:Lcom/android/internal/telephony/gsm/stk/Duration$TimeUnit;
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getRawValue()[B

    move-result-object v1

    .line 94
    .local v1, rawValue:[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getValueIndex()I

    move-result v4

    .line 97
    .local v4, valueIndex:I
    :try_start_b
    invoke-static {}, Lcom/android/internal/telephony/gsm/stk/Duration$TimeUnit;->values()[Lcom/android/internal/telephony/gsm/stk/Duration$TimeUnit;

    move-result-object v5

    aget-byte v6, v1, v4

    and-int/lit16 v6, v6, 0xff

    aget-object v3, v5, v6

    .line 98
    add-int/lit8 v5, v4, 0x1

    aget-byte v5, v1, v5
    :try_end_19
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_b .. :try_end_19} :catch_21

    and-int/lit16 v2, v5, 0xff

    .line 102
    new-instance v5, Lcom/android/internal/telephony/gsm/stk/Duration;

    invoke-direct {v5, v2, v3}, Lcom/android/internal/telephony/gsm/stk/Duration;-><init>(ILcom/android/internal/telephony/gsm/stk/Duration$TimeUnit;)V

    return-object v5

    .line 99
    :catch_21
    move-exception v5

    move-object v0, v5

    .line 100
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    new-instance v5, Lcom/android/internal/telephony/gsm/stk/ResultException;

    sget-object v6, Lcom/android/internal/telephony/gsm/stk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct {v5, v6}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw v5
.end method

.method static retrieveIconId(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)Lcom/android/internal/telephony/gsm/stk/IconId;
    .registers 8
    .parameter "ctlv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/gsm/stk/ResultException;
        }
    .end annotation

    .prologue
    .line 165
    new-instance v1, Lcom/android/internal/telephony/gsm/stk/IconId;

    invoke-direct {v1}, Lcom/android/internal/telephony/gsm/stk/IconId;-><init>()V

    .line 167
    .local v1, id:Lcom/android/internal/telephony/gsm/stk/IconId;
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getRawValue()[B

    move-result-object v2

    .line 168
    .local v2, rawValue:[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getValueIndex()I

    move-result v3

    .line 170
    .local v3, valueIndex:I
    add-int/lit8 v4, v3, 0x1

    .end local v3           #valueIndex:I
    .local v4, valueIndex:I
    :try_start_f
    aget-byte v5, v2, v3

    and-int/lit16 v5, v5, 0xff

    if-nez v5, :cond_1f

    const/4 v5, 0x1

    :goto_16
    iput-boolean v5, v1, Lcom/android/internal/telephony/gsm/stk/IconId;->selfExplanatory:Z

    .line 171
    aget-byte v5, v2, v4

    and-int/lit16 v5, v5, 0xff

    iput v5, v1, Lcom/android/internal/telephony/gsm/stk/IconId;->recordNumber:I
    :try_end_1e
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_f .. :try_end_1e} :catch_21

    .line 176
    return-object v1

    .line 170
    :cond_1f
    const/4 v5, 0x0

    goto :goto_16

    .line 172
    :catch_21
    move-exception v5

    move-object v0, v5

    .line 173
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    new-instance v5, Lcom/android/internal/telephony/gsm/stk/ResultException;

    sget-object v6, Lcom/android/internal/telephony/gsm/stk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct {v5, v6}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw v5
.end method

.method static retrieveItem(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)Lcom/android/internal/telephony/gsm/stk/Item;
    .registers 11
    .parameter "ctlv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/gsm/stk/ResultException;
        }
    .end annotation

    .prologue
    .line 113
    const/4 v2, 0x0

    .line 115
    .local v2, item:Lcom/android/internal/telephony/gsm/stk/Item;
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getRawValue()[B

    move-result-object v4

    .line 116
    .local v4, rawValue:[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getValueIndex()I

    move-result v7

    .line 117
    .local v7, valueIndex:I
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getLength()I

    move-result v3

    .line 119
    .local v3, length:I
    if-eqz v3, :cond_21

    .line 120
    const/4 v8, 0x1

    sub-int v6, v3, v8

    .line 123
    .local v6, textLen:I
    :try_start_12
    aget-byte v8, v4, v7

    and-int/lit16 v1, v8, 0xff

    .line 124
    .local v1, id:I
    add-int/lit8 v8, v7, 0x1

    invoke-static {v4, v8, v6}, Lcom/android/internal/telephony/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v5

    .line 126
    .local v5, text:Ljava/lang/String;
    new-instance v2, Lcom/android/internal/telephony/gsm/stk/Item;

    .end local v2           #item:Lcom/android/internal/telephony/gsm/stk/Item;
    invoke-direct {v2, v1, v5}, Lcom/android/internal/telephony/gsm/stk/Item;-><init>(ILjava/lang/String;)V
    :try_end_21
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_12 .. :try_end_21} :catch_22

    .line 132
    .end local v1           #id:I
    .end local v5           #text:Ljava/lang/String;
    .end local v6           #textLen:I
    .restart local v2       #item:Lcom/android/internal/telephony/gsm/stk/Item;
    :cond_21
    return-object v2

    .line 127
    .end local v2           #item:Lcom/android/internal/telephony/gsm/stk/Item;
    .restart local v6       #textLen:I
    :catch_22
    move-exception v8

    move-object v0, v8

    .line 128
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    new-instance v8, Lcom/android/internal/telephony/gsm/stk/ResultException;

    sget-object v9, Lcom/android/internal/telephony/gsm/stk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct {v8, v9}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw v8
.end method

.method static retrieveItemId(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)I
    .registers 7
    .parameter "ctlv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/gsm/stk/ResultException;
        }
    .end annotation

    .prologue
    .line 143
    const/4 v1, 0x0

    .line 145
    .local v1, id:I
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getRawValue()[B

    move-result-object v2

    .line 146
    .local v2, rawValue:[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getValueIndex()I

    move-result v3

    .line 149
    .local v3, valueIndex:I
    :try_start_9
    aget-byte v4, v2, v3
    :try_end_b
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_9 .. :try_end_b} :catch_e

    and-int/lit16 v1, v4, 0xff

    .line 154
    return v1

    .line 150
    :catch_e
    move-exception v0

    .line 151
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    new-instance v4, Lcom/android/internal/telephony/gsm/stk/ResultException;

    sget-object v5, Lcom/android/internal/telephony/gsm/stk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw v4
.end method

.method static retrieveItemsIconId(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)Lcom/android/internal/telephony/gsm/stk/ItemsIconId;
    .registers 12
    .parameter "ctlv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/gsm/stk/ResultException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    .line 189
    const-string v8, "ValueParser"

    const-string/jumbo v9, "retrieveItemsIconId:"

    invoke-static {v8, v9}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    new-instance v1, Lcom/android/internal/telephony/gsm/stk/ItemsIconId;

    invoke-direct {v1}, Lcom/android/internal/telephony/gsm/stk/ItemsIconId;-><init>()V

    .line 192
    .local v1, id:Lcom/android/internal/telephony/gsm/stk/ItemsIconId;
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getRawValue()[B

    move-result-object v5

    .line 193
    .local v5, rawValue:[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getValueIndex()I

    move-result v6

    .line 194
    .local v6, valueIndex:I
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getLength()I

    move-result v8

    sub-int v4, v8, v10

    .line 195
    .local v4, numOfItems:I
    new-array v8, v4, [I

    iput-object v8, v1, Lcom/android/internal/telephony/gsm/stk/ItemsIconId;->recordNumbers:[I

    .line 199
    add-int/lit8 v7, v6, 0x1

    .end local v6           #valueIndex:I
    .local v7, valueIndex:I
    :try_start_22
    aget-byte v8, v5, v6

    and-int/lit16 v8, v8, 0xff

    if-nez v8, :cond_3c

    move v8, v10

    :goto_29
    iput-boolean v8, v1, Lcom/android/internal/telephony/gsm/stk/ItemsIconId;->selfExplanatory:Z

    .line 201
    const/4 v2, 0x0

    .local v2, index:I
    move v3, v2

    .end local v2           #index:I
    .local v3, index:I
    :goto_2d
    if-ge v3, v4, :cond_49

    .line 202
    iget-object v8, v1, Lcom/android/internal/telephony/gsm/stk/ItemsIconId;->recordNumbers:[I
    :try_end_31
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_22 .. :try_end_31} :catch_3e

    add-int/lit8 v2, v3, 0x1

    .end local v3           #index:I
    .restart local v2       #index:I
    add-int/lit8 v6, v7, 0x1

    .end local v7           #valueIndex:I
    .restart local v6       #valueIndex:I
    :try_start_35
    aget-byte v9, v5, v7

    aput v9, v8, v3
    :try_end_39
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_35 .. :try_end_39} :catch_4a

    move v3, v2

    .end local v2           #index:I
    .restart local v3       #index:I
    move v7, v6

    .end local v6           #valueIndex:I
    .restart local v7       #valueIndex:I
    goto :goto_2d

    .line 199
    .end local v3           #index:I
    :cond_3c
    const/4 v8, 0x0

    goto :goto_29

    .line 204
    :catch_3e
    move-exception v8

    move-object v0, v8

    move v6, v7

    .line 205
    .end local v7           #valueIndex:I
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    .restart local v6       #valueIndex:I
    :goto_41
    new-instance v8, Lcom/android/internal/telephony/gsm/stk/ResultException;

    sget-object v9, Lcom/android/internal/telephony/gsm/stk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct {v8, v9}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw v8

    .line 207
    .end local v0           #e:Ljava/lang/IndexOutOfBoundsException;
    .end local v6           #valueIndex:I
    .restart local v3       #index:I
    .restart local v7       #valueIndex:I
    :cond_49
    return-object v1

    .line 204
    .end local v3           #index:I
    .end local v7           #valueIndex:I
    .restart local v2       #index:I
    .restart local v6       #valueIndex:I
    :catch_4a
    move-exception v8

    move-object v0, v8

    goto :goto_41
.end method

.method static retrieveLanguage(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)Ljava/lang/String;
    .registers 5
    .parameter "ctlv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/gsm/stk/ResultException;
        }
    .end annotation

    .prologue
    .line 690
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getRawValue()[B

    move-result-object v1

    .line 691
    .local v1, rawValue:[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getValueIndex()I

    move-result v2

    .line 692
    .local v2, valueIndex:I
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getLength()I

    move-result v0

    .line 693
    .local v0, length:I
    if-eqz v0, :cond_14

    .line 694
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1, v2, v0}, Ljava/lang/String;-><init>([BII)V

    .line 697
    :goto_13
    return-object v3

    :cond_14
    const/4 v3, 0x0

    goto :goto_13
.end method

.method static retrieveNetworkAccessName(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)Ljava/lang/String;
    .registers 13
    .parameter "ctlv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/gsm/stk/ResultException;
        }
    .end annotation

    .prologue
    const-string v11, "ValueParser"

    .line 898
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getRawValue()[B

    move-result-object v3

    .line 899
    .local v3, rawValue:[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getValueIndex()I

    move-result v6

    .line 900
    .local v6, valueIndex:I
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getLength()I

    move-result v8

    const/4 v9, 0x1

    sub-int v2, v8, v9

    .line 901
    .local v2, length:I
    add-int/lit8 v6, v6, 0x1

    .line 903
    const-string v8, "ValueParser"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "retrieveNetworkAccessName: valueIndex , Length = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " , "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v11, v8}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 905
    :try_start_36
    new-array v5, v2, [B

    .line 906
    .local v5, tempNetworkAccessName:[B
    const-string v8, "ValueParser"

    const-string/jumbo v9, "retrieveNetworkAccessName: beginning Byte array copy"

    invoke-static {v8, v9}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 908
    const/4 v1, 0x0

    .local v1, i:I
    move v7, v6

    .end local v6           #valueIndex:I
    .local v7, valueIndex:I
    :goto_42
    if-ge v1, v2, :cond_4e

    .line 909
    add-int/lit8 v6, v7, 0x1

    .end local v7           #valueIndex:I
    .restart local v6       #valueIndex:I
    aget-byte v8, v3, v7

    aput-byte v8, v5, v1
    :try_end_4a
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_36 .. :try_end_4a} :catch_90
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_36 .. :try_end_4a} :catch_a1
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_4a} :catch_b2

    .line 908
    add-int/lit8 v1, v1, 0x1

    move v7, v6

    .end local v6           #valueIndex:I
    .restart local v7       #valueIndex:I
    goto :goto_42

    .line 912
    :cond_4e
    :try_start_4e
    const-string v8, "ValueParser"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "retrieveNetworkAccessName: tempNetworkAccessName = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " Byte array copy complete"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 914
    new-instance v4, Ljava/lang/String;

    const-string v8, "UTF-8"

    invoke-direct {v4, v5, v8}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 915
    .local v4, tempName:Ljava/lang/String;
    const-string v8, "ValueParser"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "retrieveNetworkAccessName: tempName = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8d
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4e .. :try_end_8d} :catch_c5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4e .. :try_end_8d} :catch_c1
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_8d} :catch_bd

    move v6, v7

    .end local v7           #valueIndex:I
    .restart local v6       #valueIndex:I
    move-object v8, v4

    .line 926
    .end local v1           #i:I
    .end local v4           #tempName:Ljava/lang/String;
    .end local v5           #tempNetworkAccessName:[B
    :goto_8f
    return-object v8

    .line 917
    :catch_90
    move-exception v8

    move-object v0, v8

    .line 918
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    :goto_92
    const-string v8, "ValueParser"

    const-string v8, " ResultException: retrieveNetworkAccessName - IndexOutOfBoundsException"

    invoke-static {v11, v8}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 919
    new-instance v8, Lcom/android/internal/telephony/gsm/stk/ResultException;

    sget-object v9, Lcom/android/internal/telephony/gsm/stk/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct {v8, v9}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw v8

    .line 920
    .end local v0           #e:Ljava/lang/IndexOutOfBoundsException;
    :catch_a1
    move-exception v8

    move-object v0, v8

    .line 921
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    :goto_a3
    const-string v8, "ValueParser"

    const-string v8, " ResultException: retrieveNetworkAccessName - UnsupportedEncodingException"

    invoke-static {v11, v8}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 922
    new-instance v8, Lcom/android/internal/telephony/gsm/stk/ResultException;

    sget-object v9, Lcom/android/internal/telephony/gsm/stk/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct {v8, v9}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw v8

    .line 923
    .end local v0           #e:Ljava/io/UnsupportedEncodingException;
    :catch_b2
    move-exception v8

    move-object v0, v8

    .line 924
    .local v0, e:Ljava/lang/Exception;
    :goto_b4
    const-string v8, "ValueParser"

    const-string v8, "Unknown ResultException in retrieveNetworkAccessName: "

    invoke-static {v11, v8}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 926
    const/4 v8, 0x0

    goto :goto_8f

    .line 923
    .end local v0           #e:Ljava/lang/Exception;
    .end local v6           #valueIndex:I
    .restart local v1       #i:I
    .restart local v5       #tempNetworkAccessName:[B
    .restart local v7       #valueIndex:I
    :catch_bd
    move-exception v8

    move-object v0, v8

    move v6, v7

    .end local v7           #valueIndex:I
    .restart local v6       #valueIndex:I
    goto :goto_b4

    .line 920
    .end local v6           #valueIndex:I
    .restart local v7       #valueIndex:I
    :catch_c1
    move-exception v8

    move-object v0, v8

    move v6, v7

    .end local v7           #valueIndex:I
    .restart local v6       #valueIndex:I
    goto :goto_a3

    .line 917
    .end local v6           #valueIndex:I
    .restart local v7       #valueIndex:I
    :catch_c5
    move-exception v8

    move-object v0, v8

    move v6, v7

    .end local v7           #valueIndex:I
    .restart local v6       #valueIndex:I
    goto :goto_92
.end method

.method static retrieveSMSCaddress(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)Ljava/lang/String;
    .registers 9
    .parameter "ctlv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/gsm/stk/ResultException;
        }
    .end annotation

    .prologue
    .line 431
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getRawValue()[B

    move-result-object v3

    .line 432
    .local v3, rawValue:[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getValueIndex()I

    move-result v5

    .line 434
    .local v5, valueIndex:I
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getLength()I

    move-result v2

    .line 436
    .local v2, length:I
    add-int/lit8 v6, v2, 0x1

    new-array v4, v6, [B

    .line 439
    .local v4, rawValueSmscaddress:[B
    const/4 v1, 0x0

    .local v1, i:I
    :goto_11
    add-int/lit8 v6, v2, 0x1

    if-ge v1, v6, :cond_2a

    .line 441
    const/4 v6, 0x1

    sub-int v6, v5, v6

    add-int/2addr v6, v1

    :try_start_19
    aget-byte v6, v3, v6

    aput-byte v6, v4, v1
    :try_end_1d
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_19 .. :try_end_1d} :catch_20

    .line 439
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 443
    :catch_20
    move-exception v6

    move-object v0, v6

    .line 444
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    new-instance v6, Lcom/android/internal/telephony/gsm/stk/ResultException;

    sget-object v7, Lcom/android/internal/telephony/gsm/stk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct {v6, v7}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw v6

    .line 446
    .end local v0           #e:Ljava/lang/IndexOutOfBoundsException;
    :cond_2a
    if-eqz v2, :cond_31

    .line 447
    invoke-static {v4}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 449
    :cond_31
    new-instance v6, Lcom/android/internal/telephony/gsm/stk/ResultException;

    sget-object v7, Lcom/android/internal/telephony/gsm/stk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct {v6, v7}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw v6
.end method

.method static retrieveSMSTPDU(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;Ljava/lang/Boolean;)Ljava/lang/String;
    .registers 11
    .parameter "ctlv"
    .parameter "ispacking_req"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/gsm/stk/ResultException;
        }
    .end annotation

    .prologue
    .line 454
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getRawValue()[B

    move-result-object v2

    .line 455
    .local v2, rawValue:[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getValueIndex()I

    move-result v3

    .line 456
    .local v3, valueIndex:I
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getLength()I

    move-result v1

    .line 457
    .local v1, length:I
    const/4 p0, 0x0

    .line 458
    .local p0, destaddlen:I
    const/4 p0, 0x0

    .line 461
    .local p0, rawPdu:[B
    add-int/lit8 p0, v3, 0x2

    aget-byte p0, v2, p0

    .end local p0           #rawPdu:[B
    rem-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_31

    .line 462
    add-int/lit8 p0, v3, 0x2

    aget-byte p0, v2, p0

    div-int/lit8 p0, p0, 0x2

    .line 466
    .local p0, destaddlen:I
    :goto_1c
    add-int/lit8 v0, p0, 0x6

    if-ne v1, v0, :cond_3a

    .line 467
    add-int/lit8 v0, v1, 0x1

    new-array v0, v0, [B

    .local v0, rawPdu:[B
    move-object v5, v0

    .line 473
    .end local v0           #rawPdu:[B
    .local v5, rawPdu:[B
    :goto_25
    const/4 v0, 0x0

    .local v0, i:I
    :goto_26
    if-ge v0, v1, :cond_47

    .line 475
    add-int v4, v3, v0

    :try_start_2a
    aget-byte v4, v2, v4

    aput-byte v4, v5, v0
    :try_end_2e
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2a .. :try_end_2e} :catch_3e

    .line 473
    add-int/lit8 v0, v0, 0x1

    goto :goto_26

    .line 464
    .end local v0           #i:I
    .end local v5           #rawPdu:[B
    .end local p0           #destaddlen:I
    :cond_31
    add-int/lit8 p0, v3, 0x2

    aget-byte p0, v2, p0

    add-int/lit8 p0, p0, 0x1

    div-int/lit8 p0, p0, 0x2

    .restart local p0       #destaddlen:I
    goto :goto_1c

    .line 469
    :cond_3a
    new-array v0, v1, [B

    .local v0, rawPdu:[B
    move-object v5, v0

    .end local v0           #rawPdu:[B
    .restart local v5       #rawPdu:[B
    goto :goto_25

    .line 477
    .local v0, i:I
    :catch_3e
    move-exception p0

    .line 478
    .local p0, e:Ljava/lang/IndexOutOfBoundsException;
    new-instance p0, Lcom/android/internal/telephony/gsm/stk/ResultException;

    .end local p0           #e:Ljava/lang/IndexOutOfBoundsException;
    sget-object p1, Lcom/android/internal/telephony/gsm/stk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    .end local p1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw p0

    .line 481
    .local p0, destaddlen:I
    .restart local p1
    :cond_47
    add-int/lit8 p0, p0, 0x3

    add-int/lit8 p0, p0, 0x1

    add-int/lit8 p0, p0, 0x1

    aget-byte p0, v5, p0

    .end local p0           #destaddlen:I
    const/16 v0, -0x10

    if-ne p0, v0, :cond_58

    .line 482
    .end local v0           #i:I
    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 485
    :cond_58
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_2c3

    .line 487
    .end local p1
    const/4 p0, 0x0

    .line 489
    .local p0, packingUserDataIndex:I
    const/4 p0, 0x0

    .line 491
    .local p0, packingUserDatalen:I
    const/4 p0, 0x0

    .line 493
    .local p0, adjustedUserDatalen:I
    const/4 p1, 0x0

    .line 495
    .local p1, lengthtoCheck:I
    const/4 p1, 0x0

    .line 497
    .local p1, tpvpvalue:I
    const/4 v0, 0x0

    .line 499
    .local v0, tpvplength:I
    const/4 p1, 0x0

    .line 501
    .local p1, destaddrlen:I
    const-string p1, "ValueParser"

    .end local p1           #destaddrlen:I
    new-instance v2, Ljava/lang/StringBuilder;

    .end local v2           #rawValue:[B
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "rawtpvp:"

    .end local v3           #valueIndex:I
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    aget-byte v3, v5, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    const/4 p1, 0x0

    aget-byte p1, v5, p1

    and-int/lit8 p1, p1, 0x18

    .line 505
    .local p1, tpvpvalue:I
    const-string v2, "ValueParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "tpvpvalue:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    if-nez p1, :cond_103

    .line 508
    const/4 p1, 0x0

    .end local v0           #tpvplength:I
    .local p1, tpvplength:I
    move v6, p1

    .line 521
    .end local p1           #tpvplength:I
    .local v6, tpvplength:I
    :goto_a4
    const/4 p1, 0x2

    aget-byte p1, v5, p1

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_118

    .line 522
    const/4 p1, 0x2

    aget-byte p1, v5, p1

    div-int/lit8 p1, p1, 0x2

    .line 527
    .local p1, destaddrlen:I
    :goto_b0
    add-int/lit8 p1, p1, 0x3

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 p1, p1, 0x1

    add-int/2addr p1, v6

    add-int/lit8 v3, p1, 0x1

    .line 531
    .local v3, packingUserDataIndex:I
    aget-byte p1, v5, v3

    .end local p1           #destaddrlen:I
    and-int/lit16 v4, p1, 0xff

    .line 533
    .local v4, packingUserDatalen:I
    add-int/lit8 p1, v3, 0x1

    sub-int p1, v1, p1

    .line 535
    .local p1, lengthtoCheck:I
    const-string v0, "ValueParser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "length to be checked:"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    if-ne p1, v4, :cond_1f9

    .line 540
    const-string p1, "ValueParser"

    .end local p1           #lengthtoCheck:I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TPUDL_packingUserDatalen:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    const/4 v2, 0x0

    .line 542
    .local v2, shorten:I
    new-array v0, v4, [B

    .line 545
    .local v0, packinUserData:[B
    const/4 p1, 0x0

    .local p1, j:I
    :goto_f7
    if-ge p1, v4, :cond_129

    .line 547
    add-int/lit8 v7, v3, 0x1

    add-int/2addr v7, p1

    :try_start_fc
    aget-byte v7, v5, v7

    aput-byte v7, v0, p1
    :try_end_100
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_fc .. :try_end_100} :catch_120

    .line 545
    add-int/lit8 p1, p1, 0x1

    goto :goto_f7

    .line 510
    .end local v2           #shorten:I
    .end local v3           #packingUserDataIndex:I
    .end local v4           #packingUserDatalen:I
    .end local v6           #tpvplength:I
    .local v0, tpvplength:I
    .local p1, tpvpvalue:I
    :cond_103
    const/16 v2, 0x10

    if-ne p1, v2, :cond_10a

    .line 511
    const/4 p1, 0x1

    .end local v0           #tpvplength:I
    .local p1, tpvplength:I
    move v6, p1

    .end local p1           #tpvplength:I
    .restart local v6       #tpvplength:I
    goto :goto_a4

    .line 513
    .end local v6           #tpvplength:I
    .restart local v0       #tpvplength:I
    .local p1, tpvpvalue:I
    :cond_10a
    const/16 v2, 0x8

    if-ne p1, v2, :cond_111

    .line 514
    const/4 p1, 0x7

    .end local v0           #tpvplength:I
    .local p1, tpvplength:I
    move v6, p1

    .end local p1           #tpvplength:I
    .restart local v6       #tpvplength:I
    goto :goto_a4

    .line 516
    .end local v6           #tpvplength:I
    .restart local v0       #tpvplength:I
    .local p1, tpvpvalue:I
    :cond_111
    const/16 v2, 0x18

    if-ne p1, v2, :cond_2d6

    .line 517
    const/4 p1, 0x7

    .end local v0           #tpvplength:I
    .local p1, tpvplength:I
    move v6, p1

    .end local p1           #tpvplength:I
    .restart local v6       #tpvplength:I
    goto :goto_a4

    .line 524
    :cond_118
    const/4 p1, 0x2

    aget-byte p1, v5, p1

    add-int/lit8 p1, p1, 0x1

    div-int/lit8 p1, p1, 0x2

    .local p1, destaddrlen:I
    goto :goto_b0

    .line 549
    .local v0, packinUserData:[B
    .restart local v2       #shorten:I
    .restart local v3       #packingUserDataIndex:I
    .restart local v4       #packingUserDatalen:I
    .local p1, j:I
    :catch_120
    move-exception p0

    .line 550
    .local p0, e:Ljava/lang/IndexOutOfBoundsException;
    new-instance p0, Lcom/android/internal/telephony/gsm/stk/ResultException;

    .end local p0           #e:Ljava/lang/IndexOutOfBoundsException;
    sget-object p1, Lcom/android/internal/telephony/gsm/stk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    .end local p1           #j:I
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw p0

    .line 554
    .local p0, adjustedUserDatalen:I
    .restart local p1       #j:I
    :cond_129
    const/4 p1, 0x0

    invoke-static {v0, p1, v4}, Lcom/android/internal/telephony/GsmAlphabet;->gsm8BitUnpackedToString([BII)Ljava/lang/String;

    .end local p1           #j:I
    move-result-object v0

    .line 557
    .local v0, packinUserDataString:Ljava/lang/String;
    const-string p1, "ValueParser"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "TPUDL_packingUserDatastring:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p1, v7}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v7, 0xa0

    if-le p1, v7, :cond_2d2

    .line 560
    const/4 p1, 0x0

    const/16 v2, 0x9e

    invoke-virtual {v0, p1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .end local v2           #shorten:I
    move-result-object p1

    .line 561
    .local p1, fullSizePackinUserDataString:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .end local v0           #packinUserDataString:Ljava/lang/String;
    const/16 v2, 0x9e

    sub-int/2addr v0, v2

    .line 562
    .local v0, shorten:I
    aget-byte v2, v5, v3

    sub-int/2addr v2, v0

    int-to-byte v2, v2

    aput-byte v2, v5, v3

    .line 563
    move-object p1, p1

    .line 568
    .local p1, packinUserDataString:Ljava/lang/String;
    :goto_163
    :try_start_163
    invoke-static {p1}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPacked(Ljava/lang/String;)[B

    move-result-object v0

    .line 570
    .local v0, packedUserData:[B
    array-length v2, v0

    .line 572
    .local v2, packedUserDatalen:I
    const-string p1, "ValueParser"

    .end local p1           #packinUserDataString:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "TPUDL_Packed user data len:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p1, v7}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_180
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_163 .. :try_end_180} :catch_1f0

    .line 575
    const/4 p1, 0x1

    .local p1, k:I
    :goto_181
    if-ge p1, v2, :cond_18c

    .line 577
    add-int v7, v3, p1

    :try_start_185
    aget-byte v8, v0, p1

    aput-byte v8, v5, v7

    .line 575
    add-int/lit8 p1, p1, 0x1

    goto :goto_181

    .line 580
    :cond_18c
    const/4 p0, 0x1

    sub-int p0, v2, p0

    sub-int p0, v4, p0

    sub-int p0, v1, p0

    .line 582
    const-string p1, "ValueParser"

    .end local p1           #k:I
    new-instance v0, Ljava/lang/StringBuilder;

    .end local v0           #packedUserData:[B
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TPUDL_Adjusted user data len:"

    .end local v1           #length:I
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1ab
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_185 .. :try_end_1ab} :catch_1e7
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_185 .. :try_end_1ab} :catch_1f0

    move p1, v4

    .line 644
    .end local v4           #packingUserDatalen:I
    .local p1, packingUserDatalen:I
    :goto_1ac
    const-string p1, "ValueParser"

    .end local p1           #packingUserDatalen:I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Data coding scheme:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v1, v6, 0x1

    sub-int v1, v3, v1

    aget-byte v1, v5, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 647
    const/16 v0, 0xf0

    .line 648
    .local v0, datacodingscheme:I
    const/4 p1, 0x0

    .line 649
    .local p1, datacodingfromsim:I
    add-int/lit8 p1, v6, 0x1

    sub-int p1, v3, p1

    aget-byte p1, v5, p1

    .line 650
    and-int/2addr p1, v0

    .line 651
    add-int/lit8 v0, v6, 0x1

    sub-int v0, v3, v0

    int-to-byte p1, p1

    aput-byte p1, v5, v0

    .line 653
    .end local v0           #datacodingscheme:I
    .end local p1           #datacodingfromsim:I
    new-array v0, p0, [B

    .line 656
    .local v0, packeddata:[B
    const/4 p1, 0x0

    .local p1, l:I
    :goto_1de
    if-ge p1, p0, :cond_2b4

    .line 658
    :try_start_1e0
    aget-byte v1, v5, p1

    aput-byte v1, v0, p1
    :try_end_1e4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1e0 .. :try_end_1e4} :catch_2ab

    .line 656
    add-int/lit8 p1, p1, 0x1

    goto :goto_1de

    .line 584
    .end local v0           #packeddata:[B
    .end local p1           #l:I
    .restart local v4       #packingUserDatalen:I
    :catch_1e7
    move-exception p1

    .line 585
    .local p1, e:Ljava/lang/IndexOutOfBoundsException;
    :try_start_1e8
    new-instance p1, Lcom/android/internal/telephony/gsm/stk/ResultException;

    .end local p1           #e:Ljava/lang/IndexOutOfBoundsException;
    sget-object v0, Lcom/android/internal/telephony/gsm/stk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct {p1, v0}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw p1
    :try_end_1f0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_1e8 .. :try_end_1f0} :catch_1f0

    .line 587
    .end local v2           #packedUserDatalen:I
    :catch_1f0
    move-exception p1

    .line 588
    .local p1, ex:Lcom/android/internal/telephony/EncodeException;
    new-instance p0, Lcom/android/internal/telephony/gsm/stk/ResultException;

    .end local p0           #adjustedUserDatalen:I
    sget-object p1, Lcom/android/internal/telephony/gsm/stk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    .end local p1           #ex:Lcom/android/internal/telephony/EncodeException;
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw p0

    .line 595
    .restart local v1       #length:I
    .restart local p0       #adjustedUserDatalen:I
    .local p1, lengthtoCheck:I
    :cond_1f9
    add-int/lit8 v4, p1, 0x1

    .line 597
    const-string p1, "ValueParser"

    .end local p1           #lengthtoCheck:I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "packingUserDatalen:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    new-array v0, v4, [B

    .line 602
    .local v0, packinUserData:[B
    const/4 p1, 0x0

    .local p1, j:I
    :goto_217
    if-ge p1, v4, :cond_22b

    .line 604
    add-int v2, v3, p1

    :try_start_21b
    aget-byte v2, v5, v2

    aput-byte v2, v0, p1
    :try_end_21f
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_21b .. :try_end_21f} :catch_222

    .line 602
    add-int/lit8 p1, p1, 0x1

    goto :goto_217

    .line 606
    :catch_222
    move-exception p0

    .line 607
    .local p0, e:Ljava/lang/IndexOutOfBoundsException;
    new-instance p0, Lcom/android/internal/telephony/gsm/stk/ResultException;

    .end local p0           #e:Ljava/lang/IndexOutOfBoundsException;
    sget-object p1, Lcom/android/internal/telephony/gsm/stk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    .end local p1           #j:I
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw p0

    .line 612
    .local p0, adjustedUserDatalen:I
    .restart local p1       #j:I
    :cond_22b
    const/4 p1, 0x0

    invoke-static {v0, p1, v4}, Lcom/android/internal/telephony/GsmAlphabet;->gsm8BitUnpackedToString([BII)Ljava/lang/String;

    .end local p1           #j:I
    move-result-object p1

    .line 615
    .local p1, packinUserDataString:Ljava/lang/String;
    const-string v0, "ValueParser"

    .end local v0           #packinUserData:[B
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "packingUserDatastring:"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    :try_start_249
    invoke-static {p1}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPacked(Ljava/lang/String;)[B

    move-result-object v0

    .line 620
    .local v0, packedUserData:[B
    array-length v2, v0

    .line 622
    .restart local v2       #packedUserDatalen:I
    const-string p1, "ValueParser"

    .end local p1           #packinUserDataString:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Packed user data len:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p1, v7}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_266
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_249 .. :try_end_266} :catch_2a2

    .line 625
    const/4 p1, 0x0

    .local p1, k:I
    :goto_267
    const/4 v7, 0x1

    sub-int v7, v2, v7

    if-ge p1, v7, :cond_277

    .line 627
    add-int v7, v3, p1

    add-int/lit8 v8, p1, 0x1

    :try_start_270
    aget-byte v8, v0, v8

    aput-byte v8, v5, v7

    .line 625
    add-int/lit8 p1, p1, 0x1

    goto :goto_267

    .line 630
    :cond_277
    const/4 p0, 0x1

    sub-int p0, v2, p0

    sub-int p0, v4, p0

    sub-int p0, v1, p0

    .line 632
    const-string p1, "ValueParser"

    .end local p1           #k:I
    new-instance v0, Ljava/lang/StringBuilder;

    .end local v0           #packedUserData:[B
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Adjusted user data len:"

    .end local v1           #length:I
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_296
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_270 .. :try_end_296} :catch_299
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_270 .. :try_end_296} :catch_2a2

    move p1, v4

    .line 639
    .end local v4           #packingUserDatalen:I
    .local p1, packingUserDatalen:I
    goto/16 :goto_1ac

    .line 634
    .end local p1           #packingUserDatalen:I
    .restart local v4       #packingUserDatalen:I
    :catch_299
    move-exception p1

    .line 635
    .local p1, e:Ljava/lang/IndexOutOfBoundsException;
    :try_start_29a
    new-instance p1, Lcom/android/internal/telephony/gsm/stk/ResultException;

    .end local p1           #e:Ljava/lang/IndexOutOfBoundsException;
    sget-object v0, Lcom/android/internal/telephony/gsm/stk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct {p1, v0}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw p1
    :try_end_2a2
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_29a .. :try_end_2a2} :catch_2a2

    .line 637
    .end local v2           #packedUserDatalen:I
    :catch_2a2
    move-exception p1

    .line 638
    .local p1, ex:Lcom/android/internal/telephony/EncodeException;
    new-instance p0, Lcom/android/internal/telephony/gsm/stk/ResultException;

    .end local p0           #adjustedUserDatalen:I
    sget-object p1, Lcom/android/internal/telephony/gsm/stk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    .end local p1           #ex:Lcom/android/internal/telephony/EncodeException;
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw p0

    .line 660
    .end local v4           #packingUserDatalen:I
    .local v0, packeddata:[B
    .restart local v2       #packedUserDatalen:I
    .restart local p0       #adjustedUserDatalen:I
    .local p1, l:I
    :catch_2ab
    move-exception p0

    .line 661
    .local p0, e:Ljava/lang/IndexOutOfBoundsException;
    new-instance p0, Lcom/android/internal/telephony/gsm/stk/ResultException;

    .end local p0           #e:Ljava/lang/IndexOutOfBoundsException;
    sget-object p1, Lcom/android/internal/telephony/gsm/stk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    .end local p1           #l:I
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw p0

    .line 664
    .local p0, adjustedUserDatalen:I
    .restart local p1       #l:I
    :cond_2b4
    if-eqz p0, :cond_2bb

    .line 665
    invoke-static {v0}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object p0

    .line 674
    .end local v0           #packeddata:[B
    .end local v2           #packedUserDatalen:I
    .end local v3           #packingUserDataIndex:I
    .end local v6           #tpvplength:I
    .end local p0           #adjustedUserDatalen:I
    .end local p1           #l:I
    :goto_2ba
    return-object p0

    .line 667
    .restart local v0       #packeddata:[B
    .restart local v2       #packedUserDatalen:I
    .restart local v3       #packingUserDataIndex:I
    .restart local v6       #tpvplength:I
    .restart local p0       #adjustedUserDatalen:I
    .restart local p1       #l:I
    :cond_2bb
    new-instance p0, Lcom/android/internal/telephony/gsm/stk/ResultException;

    .end local p0           #adjustedUserDatalen:I
    sget-object p1, Lcom/android/internal/telephony/gsm/stk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    .end local p1           #l:I
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw p0

    .line 673
    .end local v0           #packeddata:[B
    .end local v6           #tpvplength:I
    .restart local v1       #length:I
    .local v2, rawValue:[B
    .local v3, valueIndex:I
    :cond_2c3
    if-eqz v1, :cond_2ca

    .line 674
    invoke-static {v5}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object p0

    goto :goto_2ba

    .line 676
    :cond_2ca
    new-instance p0, Lcom/android/internal/telephony/gsm/stk/ResultException;

    sget-object p1, Lcom/android/internal/telephony/gsm/stk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw p0

    .local v0, packinUserDataString:Ljava/lang/String;
    .local v2, shorten:I
    .local v3, packingUserDataIndex:I
    .restart local v4       #packingUserDatalen:I
    .restart local v6       #tpvplength:I
    .restart local p0       #adjustedUserDatalen:I
    :cond_2d2
    move-object p1, v0

    .end local v0           #packinUserDataString:Ljava/lang/String;
    .local p1, packinUserDataString:Ljava/lang/String;
    move v0, v2

    .end local v2           #shorten:I
    .local v0, shorten:I
    goto/16 :goto_163

    .end local v3           #packingUserDataIndex:I
    .end local v4           #packingUserDatalen:I
    .end local v6           #tpvplength:I
    .local v0, tpvplength:I
    .local p1, tpvpvalue:I
    :cond_2d6
    move v6, v0

    .end local v0           #tpvplength:I
    .restart local v6       #tpvplength:I
    goto/16 :goto_a4
.end method

.method static retrieveSSstring(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)Ljava/lang/String;
    .registers 7
    .parameter "ctlv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/gsm/stk/ResultException;
        }
    .end annotation

    .prologue
    .line 318
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getRawValue()[B

    move-result-object v2

    .line 319
    .local v2, rawValue:[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getValueIndex()I

    move-result v3

    .line 320
    .local v3, valueIndex:I
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getLength()I

    move-result v1

    .line 321
    .local v1, length:I
    if-eqz v1, :cond_1c

    .line 323
    :try_start_e
    invoke-static {v2, v3, v1}, Lcom/android/internal/telephony/IccUtils;->SSbcdToString([BII)Ljava/lang/String;
    :try_end_11
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_e .. :try_end_11} :catch_13

    move-result-object v4

    .line 329
    :goto_12
    return-object v4

    .line 325
    :catch_13
    move-exception v0

    .line 326
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    new-instance v4, Lcom/android/internal/telephony/gsm/stk/ResultException;

    sget-object v5, Lcom/android/internal/telephony/gsm/stk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw v4

    .line 329
    .end local v0           #e:Ljava/lang/IndexOutOfBoundsException;
    :cond_1c
    const/4 v4, 0x0

    goto :goto_12
.end method

.method static retrieveTextAttribute(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)Ljava/util/List;
    .registers 19
    .parameter "ctlv"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/gsm/stk/TextAttribute;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/gsm/stk/ResultException;
        }
    .end annotation

    .prologue
    .line 220
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 222
    .local v14, lst:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/gsm/stk/TextAttribute;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getRawValue()[B

    move-result-object v15

    .line 223
    .local v15, rawValue:[B
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getValueIndex()I

    move-result v2

    .line 224
    .local v2, valueIndex:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getLength()I

    move-result p0

    .line 226
    .local p0, length:I
    if-eqz p0, :cond_ad

    .line 228
    div-int/lit8 v13, p0, 0x4

    .line 231
    .local v13, itemCount:I
    const/16 p0, 0x0

    .local p0, i:I
    move/from16 v12, p0

    .end local p0           #i:I
    .local v12, i:I
    move/from16 v16, v2

    .end local v2           #valueIndex:I
    .local v16, valueIndex:I
    :goto_1b
    if-ge v12, v13, :cond_9d

    .line 232
    :try_start_1d
    aget-byte p0, v15, v16

    move/from16 v0, p0

    and-int/lit16 v0, v0, 0xff

    move v3, v0

    .line 233
    .local v3, start:I
    add-int/lit8 p0, v16, 0x1

    aget-byte p0, v15, p0

    move/from16 v0, p0

    and-int/lit16 v0, v0, 0xff

    move v4, v0

    .line 234
    .local v4, textLength:I
    add-int/lit8 p0, v16, 0x2

    aget-byte p0, v15, p0

    move/from16 v0, p0

    and-int/lit16 v0, v0, 0xff

    move v10, v0

    .line 235
    .local v10, format:I
    add-int/lit8 p0, v16, 0x3

    aget-byte p0, v15, p0

    move/from16 v0, p0

    and-int/lit16 v0, v0, 0xff

    move v2, v0

    .line 237
    .local v2, colorValue:I
    and-int/lit8 p0, v10, 0x3

    .line 238
    .local p0, alignValue:I
    invoke-static/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/stk/TextAlignment;->fromInt(I)Lcom/android/internal/telephony/gsm/stk/TextAlignment;

    move-result-object v5

    .line 240
    .local v5, align:Lcom/android/internal/telephony/gsm/stk/TextAlignment;
    shr-int/lit8 p0, v10, 0x2

    and-int/lit8 p0, p0, 0x3

    .line 241
    .local p0, sizeValue:I
    invoke-static/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/stk/FontSize;->fromInt(I)Lcom/android/internal/telephony/gsm/stk/FontSize;

    move-result-object v6

    .line 242
    .local v6, size:Lcom/android/internal/telephony/gsm/stk/FontSize;
    if-nez v6, :cond_51

    .line 244
    sget-object v6, Lcom/android/internal/telephony/gsm/stk/FontSize;->NORMAL:Lcom/android/internal/telephony/gsm/stk/FontSize;

    .line 247
    :cond_51
    and-int/lit8 p0, v10, 0x10

    if-eqz p0, :cond_89

    .end local p0           #sizeValue:I
    const/16 p0, 0x1

    move/from16 v7, p0

    .line 248
    .local v7, bold:Z
    :goto_59
    and-int/lit8 p0, v10, 0x20

    if-eqz p0, :cond_8e

    const/16 p0, 0x1

    move/from16 v8, p0

    .line 249
    .local v8, italic:Z
    :goto_61
    and-int/lit8 p0, v10, 0x40

    if-eqz p0, :cond_93

    const/16 p0, 0x1

    move/from16 v9, p0

    .line 250
    .local v9, underlined:Z
    :goto_69
    move v0, v10

    and-int/lit16 v0, v0, 0x80

    move/from16 p0, v0

    if-eqz p0, :cond_98

    const/16 p0, 0x1

    move/from16 v10, p0

    .line 252
    .local v10, strikeThrough:Z
    :goto_74
    invoke-static {v2}, Lcom/android/internal/telephony/gsm/stk/TextColor;->fromInt(I)Lcom/android/internal/telephony/gsm/stk/TextColor;

    move-result-object v11

    .line 254
    .local v11, color:Lcom/android/internal/telephony/gsm/stk/TextColor;
    new-instance v2, Lcom/android/internal/telephony/gsm/stk/TextAttribute;

    .end local v2           #colorValue:I
    invoke-direct/range {v2 .. v11}, Lcom/android/internal/telephony/gsm/stk/TextAttribute;-><init>(IILcom/android/internal/telephony/gsm/stk/TextAlignment;Lcom/android/internal/telephony/gsm/stk/FontSize;ZZZZLcom/android/internal/telephony/gsm/stk/TextColor;)V

    .line 257
    .local v2, attr:Lcom/android/internal/telephony/gsm/stk/TextAttribute;
    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_80
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1d .. :try_end_80} :catch_a1

    .line 231
    add-int/lit8 p0, v12, 0x1

    .end local v12           #i:I
    .local p0, i:I
    add-int/lit8 v2, v16, 0x4

    .end local v16           #valueIndex:I
    .local v2, valueIndex:I
    move/from16 v12, p0

    .end local p0           #i:I
    .restart local v12       #i:I
    move/from16 v16, v2

    .end local v2           #valueIndex:I
    .restart local v16       #valueIndex:I
    goto :goto_1b

    .line 247
    .end local v7           #bold:Z
    .end local v8           #italic:Z
    .end local v9           #underlined:Z
    .end local v11           #color:Lcom/android/internal/telephony/gsm/stk/TextColor;
    .local v2, colorValue:I
    .local v10, format:I
    :cond_89
    const/16 p0, 0x0

    move/from16 v7, p0

    goto :goto_59

    .line 248
    .restart local v7       #bold:Z
    :cond_8e
    const/16 p0, 0x0

    move/from16 v8, p0

    goto :goto_61

    .line 249
    .restart local v8       #italic:Z
    :cond_93
    const/16 p0, 0x0

    move/from16 v9, p0

    goto :goto_69

    .line 250
    .restart local v9       #underlined:Z
    :cond_98
    const/16 p0, 0x0

    move/from16 v10, p0

    goto :goto_74

    .end local v2           #colorValue:I
    .end local v3           #start:I
    .end local v4           #textLength:I
    .end local v5           #align:Lcom/android/internal/telephony/gsm/stk/TextAlignment;
    .end local v6           #size:Lcom/android/internal/telephony/gsm/stk/FontSize;
    .end local v7           #bold:Z
    .end local v8           #italic:Z
    .end local v9           #underlined:Z
    .end local v10           #format:I
    :cond_9d
    move/from16 p0, v16

    .end local v16           #valueIndex:I
    .local p0, valueIndex:I
    move-object v2, v14

    .line 266
    .end local v12           #i:I
    .end local v13           #itemCount:I
    :goto_a0
    return-object v2

    .line 262
    .end local p0           #valueIndex:I
    .restart local v12       #i:I
    .restart local v13       #itemCount:I
    .restart local v16       #valueIndex:I
    :catch_a1
    move-exception p0

    .line 263
    .local p0, e:Ljava/lang/IndexOutOfBoundsException;
    new-instance p0, Lcom/android/internal/telephony/gsm/stk/ResultException;

    .end local p0           #e:Ljava/lang/IndexOutOfBoundsException;
    sget-object v2, Lcom/android/internal/telephony/gsm/stk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    move-object/from16 v0, p0

    move-object v1, v2

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw p0

    .line 266
    .end local v12           #i:I
    .end local v13           #itemCount:I
    .end local v16           #valueIndex:I
    .local v2, valueIndex:I
    .local p0, length:I
    :cond_ad
    const/16 p0, 0x0

    move/from16 v17, v2

    .end local v2           #valueIndex:I
    .local v17, valueIndex:I
    move-object/from16 v2, p0

    move/from16 p0, v17

    .end local v17           #valueIndex:I
    .local p0, valueIndex:I
    goto :goto_a0
.end method

.method static retrieveTextString(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)Ljava/lang/String;
    .registers 10
    .parameter "ctlv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/gsm/stk/ResultException;
        }
    .end annotation

    .prologue
    .line 390
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getRawValue()[B

    move-result-object v2

    .line 391
    .local v2, rawValue:[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getValueIndex()I

    move-result v6

    .line 392
    .local v6, valueIndex:I
    const/4 v0, 0x0

    .line 393
    .local v0, codingScheme:B
    const/4 v3, 0x0

    .line 394
    .local v3, text:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getLength()I

    move-result v5

    .line 397
    .local v5, textLen:I
    if-nez v5, :cond_12

    move-object v4, v3

    .line 421
    .end local v3           #text:Ljava/lang/String;
    .local v4, text:Ljava/lang/String;
    :goto_11
    return-object v4

    .line 403
    .end local v4           #text:Ljava/lang/String;
    .restart local v3       #text:Ljava/lang/String;
    :cond_12
    add-int/lit8 v5, v5, -0x1

    .line 407
    :try_start_14
    aget-byte v7, v2, v6

    and-int/lit8 v7, v7, 0xc

    int-to-byte v0, v7

    .line 409
    if-nez v0, :cond_27

    .line 410
    add-int/lit8 v7, v6, 0x1

    mul-int/lit8 v8, v5, 0x8

    div-int/lit8 v8, v8, 0x7

    invoke-static {v2, v7, v8}, Lcom/android/internal/telephony/GsmAlphabet;->gsm7BitPackedToString([BII)Ljava/lang/String;

    move-result-object v3

    :goto_25
    move-object v4, v3

    .line 421
    .end local v3           #text:Ljava/lang/String;
    .restart local v4       #text:Ljava/lang/String;
    goto :goto_11

    .line 412
    .end local v4           #text:Ljava/lang/String;
    .restart local v3       #text:Ljava/lang/String;
    :cond_27
    const/4 v7, 0x4

    if-ne v0, v7, :cond_31

    .line 413
    add-int/lit8 v7, v6, 0x1

    invoke-static {v2, v7, v5}, Lcom/android/internal/telephony/GsmAlphabet;->gsm8BitUnpackedToString([BII)Ljava/lang/String;

    move-result-object v3

    goto :goto_25

    .line 415
    :cond_31
    const/16 v7, 0x8

    if-ne v0, v7, :cond_3f

    .line 416
    new-instance v3, Ljava/lang/String;

    .end local v3           #text:Ljava/lang/String;
    add-int/lit8 v7, v6, 0x1

    const-string v8, "UTF-16"

    invoke-direct {v3, v2, v7, v5, v8}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .restart local v3       #text:Ljava/lang/String;
    goto :goto_25

    .line 418
    :cond_3f
    new-instance v7, Lcom/android/internal/telephony/gsm/stk/ResultException;

    sget-object v8, Lcom/android/internal/telephony/gsm/stk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct {v7, v8}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw v7
    :try_end_47
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_14 .. :try_end_47} :catch_47
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_14 .. :try_end_47} :catch_51

    .line 422
    .end local v3           #text:Ljava/lang/String;
    :catch_47
    move-exception v7

    move-object v1, v7

    .line 423
    .local v1, e:Ljava/lang/IndexOutOfBoundsException;
    new-instance v7, Lcom/android/internal/telephony/gsm/stk/ResultException;

    sget-object v8, Lcom/android/internal/telephony/gsm/stk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct {v7, v8}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw v7

    .line 424
    .end local v1           #e:Ljava/lang/IndexOutOfBoundsException;
    :catch_51
    move-exception v7

    move-object v1, v7

    .line 426
    .local v1, e:Ljava/io/UnsupportedEncodingException;
    new-instance v7, Lcom/android/internal/telephony/gsm/stk/ResultException;

    sget-object v8, Lcom/android/internal/telephony/gsm/stk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct {v7, v8}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw v7
.end method

.method static retrieveTransportLevel(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)Lcom/android/internal/telephony/gsm/stk/TransportLevel;
    .registers 12
    .parameter "ctlv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/gsm/stk/ResultException;
        }
    .end annotation

    .prologue
    const-string v9, " , "

    const-string v10, "ValueParser"

    .line 819
    new-instance v5, Lcom/android/internal/telephony/gsm/stk/TransportLevel;

    invoke-direct {v5}, Lcom/android/internal/telephony/gsm/stk/TransportLevel;-><init>()V

    .line 820
    .local v5, transportLevel:Lcom/android/internal/telephony/gsm/stk/TransportLevel;
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getRawValue()[B

    move-result-object v3

    .line 821
    .local v3, rawValue:[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getValueIndex()I

    move-result v6

    .line 822
    .local v6, valueIndex:I
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getLength()I

    move-result v2

    .line 823
    .local v2, length:I
    const-string v7, "ValueParser"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "retrieveTransportLevel: valueIndex , Length = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " , "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 825
    :try_start_38
    aget-byte v7, v3, v6

    iput-byte v7, v5, Lcom/android/internal/telephony/gsm/stk/TransportLevel;->transportProtocol:B

    .line 826
    add-int/lit8 v7, v6, 0x1

    aget-byte v7, v3, v7

    and-int/lit16 v1, v7, 0xff

    .line 827
    .local v1, firstByte:I
    add-int/lit8 v7, v6, 0x2

    aget-byte v7, v3, v7

    and-int/lit16 v4, v7, 0xff

    .line 828
    .local v4, secondByte:I
    shl-int/lit8 v7, v1, 0x8

    or-int/2addr v7, v4

    iput v7, v5, Lcom/android/internal/telephony/gsm/stk/TransportLevel;->portNumber:I

    .line 829
    const-string v7, "ValueParser"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "retrieveTransportLevel: transportProtocol , portNumber = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-byte v9, v5, Lcom/android/internal/telephony/gsm/stk/TransportLevel;->transportProtocol:B

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " , "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v5, Lcom/android/internal/telephony/gsm/stk/TransportLevel;->portNumber:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_74
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_38 .. :try_end_74} :catch_76
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_74} :catch_87

    move-object v7, v5

    .line 837
    .end local v1           #firstByte:I
    .end local v4           #secondByte:I
    :goto_75
    return-object v7

    .line 831
    :catch_76
    move-exception v7

    move-object v0, v7

    .line 832
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    const-string v7, "ValueParser"

    const-string v7, "ResultException: retrieveTransportLevel"

    invoke-static {v10, v7}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 833
    new-instance v7, Lcom/android/internal/telephony/gsm/stk/ResultException;

    sget-object v8, Lcom/android/internal/telephony/gsm/stk/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct {v7, v8}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw v7

    .line 834
    .end local v0           #e:Ljava/lang/IndexOutOfBoundsException;
    :catch_87
    move-exception v7

    move-object v0, v7

    .line 835
    .local v0, e:Ljava/lang/Exception;
    const-string v7, "ValueParser"

    const-string v7, "Unknown ResultException in retrieveTransportLevel: "

    invoke-static {v10, v7}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 837
    const/4 v7, 0x0

    goto :goto_75
.end method

.method static retrieveUSSDstring(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)[B
    .registers 11
    .parameter "ctlv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/gsm/stk/ResultException;
        }
    .end annotation

    .prologue
    .line 342
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getRawValue()[B

    move-result-object v4

    .line 343
    .local v4, rawValue:[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getValueIndex()I

    move-result v6

    .line 344
    .local v6, valueIndex:I
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getLength()I

    move-result v3

    .line 345
    .local v3, length:I
    add-int v8, v6, v3

    const/4 v9, 0x1

    sub-int v0, v8, v9

    .line 346
    .local v0, endOfUssdString:I
    if-eqz v3, :cond_28

    .line 347
    new-array v5, v3, [B

    .line 348
    .local v5, ussdString:[B
    const/4 v1, 0x0

    .local v1, i:I
    move v2, v1

    .end local v1           #i:I
    .local v2, i:I
    move v7, v6

    .end local v6           #valueIndex:I
    .local v7, valueIndex:I
    :goto_18
    if-gt v7, v0, :cond_25

    .line 349
    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    add-int/lit8 v6, v7, 0x1

    .end local v7           #valueIndex:I
    .restart local v6       #valueIndex:I
    aget-byte v8, v4, v7

    aput-byte v8, v5, v2

    move v2, v1

    .end local v1           #i:I
    .restart local v2       #i:I
    move v7, v6

    .end local v6           #valueIndex:I
    .restart local v7       #valueIndex:I
    goto :goto_18

    :cond_25
    move v6, v7

    .end local v7           #valueIndex:I
    .restart local v6       #valueIndex:I
    move-object v8, v5

    .line 353
    .end local v2           #i:I
    .end local v5           #ussdString:[B
    :goto_27
    return-object v8

    :cond_28
    const/4 v8, 0x0

    goto :goto_27
.end method
