.class synthetic Lcom/android/internal/telephony/DataConnection$1;
.super Ljava/lang/Object;
.source "DataConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/DataConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$android$internal$telephony$DataConnection$FailCause:[I

.field static final synthetic $SwitchMap$com$android$internal$telephony$DataConnection$SetupResult:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 244
    invoke-static {}, Lcom/android/internal/telephony/DataConnection$FailCause;->values()[Lcom/android/internal/telephony/DataConnection$FailCause;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/internal/telephony/DataConnection$1;->$SwitchMap$com$android$internal$telephony$DataConnection$FailCause:[I

    :try_start_9
    sget-object v0, Lcom/android/internal/telephony/DataConnection$1;->$SwitchMap$com$android$internal$telephony$DataConnection$FailCause:[I

    sget-object v1, Lcom/android/internal/telephony/DataConnection$FailCause;->NONE:Lcom/android/internal/telephony/DataConnection$FailCause;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnection$FailCause;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_136

    :goto_14
    :try_start_14
    sget-object v0, Lcom/android/internal/telephony/DataConnection$1;->$SwitchMap$com$android$internal$telephony$DataConnection$FailCause:[I

    sget-object v1, Lcom/android/internal/telephony/DataConnection$FailCause;->OPERATOR_BARRED:Lcom/android/internal/telephony/DataConnection$FailCause;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnection$FailCause;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_133

    :goto_1f
    :try_start_1f
    sget-object v0, Lcom/android/internal/telephony/DataConnection$1;->$SwitchMap$com$android$internal$telephony$DataConnection$FailCause:[I

    sget-object v1, Lcom/android/internal/telephony/DataConnection$FailCause;->INSUFFICIENT_RESOURCES:Lcom/android/internal/telephony/DataConnection$FailCause;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnection$FailCause;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_130

    :goto_2a
    :try_start_2a
    sget-object v0, Lcom/android/internal/telephony/DataConnection$1;->$SwitchMap$com$android$internal$telephony$DataConnection$FailCause:[I

    sget-object v1, Lcom/android/internal/telephony/DataConnection$FailCause;->MISSING_UNKNOWN_APN:Lcom/android/internal/telephony/DataConnection$FailCause;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnection$FailCause;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_35} :catch_12d

    :goto_35
    :try_start_35
    sget-object v0, Lcom/android/internal/telephony/DataConnection$1;->$SwitchMap$com$android$internal$telephony$DataConnection$FailCause:[I

    sget-object v1, Lcom/android/internal/telephony/DataConnection$FailCause;->UNKNOWN_PDP_ADDRESS:Lcom/android/internal/telephony/DataConnection$FailCause;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnection$FailCause;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_40
    .catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_40} :catch_12a

    :goto_40
    :try_start_40
    sget-object v0, Lcom/android/internal/telephony/DataConnection$1;->$SwitchMap$com$android$internal$telephony$DataConnection$FailCause:[I

    sget-object v1, Lcom/android/internal/telephony/DataConnection$FailCause;->USER_AUTHENTICATION:Lcom/android/internal/telephony/DataConnection$FailCause;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnection$FailCause;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_4b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_40 .. :try_end_4b} :catch_127

    :goto_4b
    :try_start_4b
    sget-object v0, Lcom/android/internal/telephony/DataConnection$1;->$SwitchMap$com$android$internal$telephony$DataConnection$FailCause:[I

    sget-object v1, Lcom/android/internal/telephony/DataConnection$FailCause;->ACTIVATION_REJECT_GGSN:Lcom/android/internal/telephony/DataConnection$FailCause;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnection$FailCause;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_56
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4b .. :try_end_56} :catch_124

    :goto_56
    :try_start_56
    sget-object v0, Lcom/android/internal/telephony/DataConnection$1;->$SwitchMap$com$android$internal$telephony$DataConnection$FailCause:[I

    sget-object v1, Lcom/android/internal/telephony/DataConnection$FailCause;->ACTIVATION_REJECT_UNSPECIFIED:Lcom/android/internal/telephony/DataConnection$FailCause;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnection$FailCause;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_62
    .catch Ljava/lang/NoSuchFieldError; {:try_start_56 .. :try_end_62} :catch_121

    :goto_62
    :try_start_62
    sget-object v0, Lcom/android/internal/telephony/DataConnection$1;->$SwitchMap$com$android$internal$telephony$DataConnection$FailCause:[I

    sget-object v1, Lcom/android/internal/telephony/DataConnection$FailCause;->SERVICE_OPTION_NOT_SUPPORTED:Lcom/android/internal/telephony/DataConnection$FailCause;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnection$FailCause;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_6e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_62 .. :try_end_6e} :catch_11e

    :goto_6e
    :try_start_6e
    sget-object v0, Lcom/android/internal/telephony/DataConnection$1;->$SwitchMap$com$android$internal$telephony$DataConnection$FailCause:[I

    sget-object v1, Lcom/android/internal/telephony/DataConnection$FailCause;->SERVICE_OPTION_NOT_SUBSCRIBED:Lcom/android/internal/telephony/DataConnection$FailCause;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnection$FailCause;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_7a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6e .. :try_end_7a} :catch_11b

    :goto_7a
    :try_start_7a
    sget-object v0, Lcom/android/internal/telephony/DataConnection$1;->$SwitchMap$com$android$internal$telephony$DataConnection$FailCause:[I

    sget-object v1, Lcom/android/internal/telephony/DataConnection$FailCause;->SERVICE_OPTION_OUT_OF_ORDER:Lcom/android/internal/telephony/DataConnection$FailCause;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnection$FailCause;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_86
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7a .. :try_end_86} :catch_118

    :goto_86
    :try_start_86
    sget-object v0, Lcom/android/internal/telephony/DataConnection$1;->$SwitchMap$com$android$internal$telephony$DataConnection$FailCause:[I

    sget-object v1, Lcom/android/internal/telephony/DataConnection$FailCause;->NSAPI_IN_USE:Lcom/android/internal/telephony/DataConnection$FailCause;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnection$FailCause;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_92
    .catch Ljava/lang/NoSuchFieldError; {:try_start_86 .. :try_end_92} :catch_115

    :goto_92
    :try_start_92
    sget-object v0, Lcom/android/internal/telephony/DataConnection$1;->$SwitchMap$com$android$internal$telephony$DataConnection$FailCause:[I

    sget-object v1, Lcom/android/internal/telephony/DataConnection$FailCause;->PROTOCOL_ERRORS:Lcom/android/internal/telephony/DataConnection$FailCause;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnection$FailCause;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_9e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_92 .. :try_end_9e} :catch_113

    :goto_9e
    :try_start_9e
    sget-object v0, Lcom/android/internal/telephony/DataConnection$1;->$SwitchMap$com$android$internal$telephony$DataConnection$FailCause:[I

    sget-object v1, Lcom/android/internal/telephony/DataConnection$FailCause;->REGISTRATION_FAIL:Lcom/android/internal/telephony/DataConnection$FailCause;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnection$FailCause;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_aa
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9e .. :try_end_aa} :catch_111

    :goto_aa
    :try_start_aa
    sget-object v0, Lcom/android/internal/telephony/DataConnection$1;->$SwitchMap$com$android$internal$telephony$DataConnection$FailCause:[I

    sget-object v1, Lcom/android/internal/telephony/DataConnection$FailCause;->GPRS_REGISTRATION_FAIL:Lcom/android/internal/telephony/DataConnection$FailCause;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnection$FailCause;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_b6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_aa .. :try_end_b6} :catch_10f

    :goto_b6
    :try_start_b6
    sget-object v0, Lcom/android/internal/telephony/DataConnection$1;->$SwitchMap$com$android$internal$telephony$DataConnection$FailCause:[I

    sget-object v1, Lcom/android/internal/telephony/DataConnection$FailCause;->RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/DataConnection$FailCause;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnection$FailCause;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_c2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b6 .. :try_end_c2} :catch_10d

    .line 116
    :goto_c2
    invoke-static {}, Lcom/android/internal/telephony/DataConnection$SetupResult;->values()[Lcom/android/internal/telephony/DataConnection$SetupResult;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/internal/telephony/DataConnection$1;->$SwitchMap$com$android$internal$telephony$DataConnection$SetupResult:[I

    :try_start_cb
    sget-object v0, Lcom/android/internal/telephony/DataConnection$1;->$SwitchMap$com$android$internal$telephony$DataConnection$SetupResult:[I

    sget-object v1, Lcom/android/internal/telephony/DataConnection$SetupResult;->ERR_BadCommand:Lcom/android/internal/telephony/DataConnection$SetupResult;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnection$SetupResult;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_d6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_cb .. :try_end_d6} :catch_10b

    :goto_d6
    :try_start_d6
    sget-object v0, Lcom/android/internal/telephony/DataConnection$1;->$SwitchMap$com$android$internal$telephony$DataConnection$SetupResult:[I

    sget-object v1, Lcom/android/internal/telephony/DataConnection$SetupResult;->ERR_BadDns:Lcom/android/internal/telephony/DataConnection$SetupResult;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnection$SetupResult;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_e1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d6 .. :try_end_e1} :catch_109

    :goto_e1
    :try_start_e1
    sget-object v0, Lcom/android/internal/telephony/DataConnection$1;->$SwitchMap$com$android$internal$telephony$DataConnection$SetupResult:[I

    sget-object v1, Lcom/android/internal/telephony/DataConnection$SetupResult;->ERR_Other:Lcom/android/internal/telephony/DataConnection$SetupResult;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnection$SetupResult;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_ec
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e1 .. :try_end_ec} :catch_107

    :goto_ec
    :try_start_ec
    sget-object v0, Lcom/android/internal/telephony/DataConnection$1;->$SwitchMap$com$android$internal$telephony$DataConnection$SetupResult:[I

    sget-object v1, Lcom/android/internal/telephony/DataConnection$SetupResult;->ERR_Stale:Lcom/android/internal/telephony/DataConnection$SetupResult;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnection$SetupResult;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_f7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ec .. :try_end_f7} :catch_105

    :goto_f7
    :try_start_f7
    sget-object v0, Lcom/android/internal/telephony/DataConnection$1;->$SwitchMap$com$android$internal$telephony$DataConnection$SetupResult:[I

    sget-object v1, Lcom/android/internal/telephony/DataConnection$SetupResult;->SUCCESS:Lcom/android/internal/telephony/DataConnection$SetupResult;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnection$SetupResult;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_102
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f7 .. :try_end_102} :catch_103

    :goto_102
    return-void

    :catch_103
    move-exception v0

    goto :goto_102

    :catch_105
    move-exception v0

    goto :goto_f7

    :catch_107
    move-exception v0

    goto :goto_ec

    :catch_109
    move-exception v0

    goto :goto_e1

    :catch_10b
    move-exception v0

    goto :goto_d6

    .line 244
    :catch_10d
    move-exception v0

    goto :goto_c2

    :catch_10f
    move-exception v0

    goto :goto_b6

    :catch_111
    move-exception v0

    goto :goto_aa

    :catch_113
    move-exception v0

    goto :goto_9e

    :catch_115
    move-exception v0

    goto/16 :goto_92

    :catch_118
    move-exception v0

    goto/16 :goto_86

    :catch_11b
    move-exception v0

    goto/16 :goto_7a

    :catch_11e
    move-exception v0

    goto/16 :goto_6e

    :catch_121
    move-exception v0

    goto/16 :goto_62

    :catch_124
    move-exception v0

    goto/16 :goto_56

    :catch_127
    move-exception v0

    goto/16 :goto_4b

    :catch_12a
    move-exception v0

    goto/16 :goto_40

    :catch_12d
    move-exception v0

    goto/16 :goto_35

    :catch_130
    move-exception v0

    goto/16 :goto_2a

    :catch_133
    move-exception v0

    goto/16 :goto_1f

    :catch_136
    move-exception v0

    goto/16 :goto_14
.end method
