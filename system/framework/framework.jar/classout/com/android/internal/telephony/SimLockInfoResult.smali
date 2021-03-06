.class public Lcom/android/internal/telephony/SimLockInfoResult;
.super Ljava/lang/Object;
.source "SimLockInfoResult.java"


# static fields
.field private static final LOCK_ACL:I = 0xb

.field private static final LOCK_CORP_PERS:I = 0x8

.field private static final LOCK_FD:I = 0x4

.field private static final LOCK_NETWORK_PERS:I = 0x5

.field private static final LOCK_NETWORK_SUBSET_PERS:I = 0x6

.field private static final LOCK_PH_FSIM:I = 0x2

.field private static final LOCK_PH_SIM:I = 0x1

.field private static final LOCK_PIN2:I = 0x9

.field private static final LOCK_PUK2:I = 0xa

.field private static final LOCK_READY:I = 0x0

.field private static final LOCK_SIM:I = 0x3

.field private static final LOCK_SP_PERS:I = 0x7

.field static final LOG_TAG:Ljava/lang/String; = "SimLockInfoResult"

.field private static final NOT_NEED:I = 0x0

.field private static final NO_SIM:I = 0x80

.field private static final PERM_BLOCKED:I = 0x5

.field private static final PIN:I = 0x1

.field private static final PIN2:I = 0x3

.field private static final PIN2_DISABLE:I = 0x6

.field private static final PUK:I = 0x2

.field private static final PUK2:I = 0x4

.field static Pin2_Retry:I

.field static Pin_Retry:I

.field static Puk2_Retry:I

.field static Puk_Retry:I

.field static isPermBlocked:I

.field static lockKey:I

.field static lockPin2Key:I

.field static lockPinKey:I

.field static lockType:I

.field static numRetry:I

.field static num_lock_type:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 46
    sput v0, Lcom/android/internal/telephony/SimLockInfoResult;->num_lock_type:I

    .line 47
    sput v0, Lcom/android/internal/telephony/SimLockInfoResult;->lockType:I

    .line 48
    sput v0, Lcom/android/internal/telephony/SimLockInfoResult;->lockKey:I

    .line 49
    sput v0, Lcom/android/internal/telephony/SimLockInfoResult;->lockPinKey:I

    .line 50
    sput v0, Lcom/android/internal/telephony/SimLockInfoResult;->lockPin2Key:I

    .line 51
    sput v0, Lcom/android/internal/telephony/SimLockInfoResult;->numRetry:I

    .line 52
    sput v0, Lcom/android/internal/telephony/SimLockInfoResult;->Pin_Retry:I

    .line 53
    sput v0, Lcom/android/internal/telephony/SimLockInfoResult;->Pin2_Retry:I

    .line 54
    sput v0, Lcom/android/internal/telephony/SimLockInfoResult;->Puk_Retry:I

    .line 55
    sput v0, Lcom/android/internal/telephony/SimLockInfoResult;->Puk2_Retry:I

    .line 57
    sput v0, Lcom/android/internal/telephony/SimLockInfoResult;->isPermBlocked:I

    return-void
.end method

.method public constructor <init>(IIII)V
    .registers 9
    .parameter "num_lock_type"
    .parameter "lockType"
    .parameter "lockKey"
    .parameter "numRetry"

    .prologue
    const/4 v3, 0x0

    const-string v2, "SimLockInfoResult"

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    sput p1, Lcom/android/internal/telephony/SimLockInfoResult;->num_lock_type:I

    .line 63
    sput p2, Lcom/android/internal/telephony/SimLockInfoResult;->lockType:I

    .line 64
    sput p3, Lcom/android/internal/telephony/SimLockInfoResult;->lockKey:I

    .line 65
    sput p4, Lcom/android/internal/telephony/SimLockInfoResult;->numRetry:I

    .line 66
    const-string v0, "SimLockInfoResult"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "num:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lockType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lock_key:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", numRetry:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    const/16 v0, 0xa

    if-ne p2, v0, :cond_4c

    .line 69
    sput p4, Lcom/android/internal/telephony/SimLockInfoResult;->Puk2_Retry:I

    .line 124
    :goto_4b
    return-void

    .line 72
    :cond_4c
    packed-switch p3, :pswitch_data_10a

    goto :goto_4b

    .line 75
    :pswitch_50
    sput p4, Lcom/android/internal/telephony/SimLockInfoResult;->Pin_Retry:I

    .line 76
    const-string v0, "SimLockInfoResult"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NOT_NEED numRetry: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/android/internal/telephony/SimLockInfoResult;->Pin_Retry:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4b

    .line 80
    :pswitch_6d
    sput p4, Lcom/android/internal/telephony/SimLockInfoResult;->Pin_Retry:I

    .line 81
    sput p3, Lcom/android/internal/telephony/SimLockInfoResult;->lockPinKey:I

    .line 82
    const-string v0, "SimLockInfoResult"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PIN numRetry: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/android/internal/telephony/SimLockInfoResult;->Pin_Retry:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4b

    .line 86
    :pswitch_8c
    const/4 v0, 0x3

    if-ne p2, v0, :cond_a0

    .line 87
    sput v3, Lcom/android/internal/telephony/SimLockInfoResult;->Pin_Retry:I

    .line 88
    sput v3, Lcom/android/internal/telephony/SimLockInfoResult;->Puk_Retry:I

    .line 89
    const/4 v0, 0x1

    sput v0, Lcom/android/internal/telephony/SimLockInfoResult;->isPermBlocked:I

    .line 90
    sput p3, Lcom/android/internal/telephony/SimLockInfoResult;->lockPinKey:I

    .line 98
    :cond_98
    :goto_98
    const-string v0, "SimLockInfoResult"

    const-string v0, "Permernet blocked"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4b

    .line 92
    :cond_a0
    const/16 v0, 0x9

    if-ne p2, v0, :cond_98

    .line 93
    sput v3, Lcom/android/internal/telephony/SimLockInfoResult;->Pin2_Retry:I

    .line 94
    sput v3, Lcom/android/internal/telephony/SimLockInfoResult;->Puk2_Retry:I

    .line 95
    sput p3, Lcom/android/internal/telephony/SimLockInfoResult;->lockPin2Key:I

    goto :goto_98

    .line 101
    :pswitch_ab
    sput p4, Lcom/android/internal/telephony/SimLockInfoResult;->Puk_Retry:I

    .line 102
    sput p3, Lcom/android/internal/telephony/SimLockInfoResult;->lockPinKey:I

    .line 103
    const-string v0, "SimLockInfoResult"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PUK numRetry: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/android/internal/telephony/SimLockInfoResult;->Puk_Retry:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4b

    .line 108
    :pswitch_ca
    sput p4, Lcom/android/internal/telephony/SimLockInfoResult;->Pin2_Retry:I

    .line 109
    sput p3, Lcom/android/internal/telephony/SimLockInfoResult;->lockPin2Key:I

    .line 110
    const-string v0, "SimLockInfoResult"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PIN2 numRetry: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/android/internal/telephony/SimLockInfoResult;->Pin2_Retry:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4b

    .line 114
    :pswitch_ea
    sput p4, Lcom/android/internal/telephony/SimLockInfoResult;->Puk2_Retry:I

    .line 115
    sput p3, Lcom/android/internal/telephony/SimLockInfoResult;->lockPin2Key:I

    .line 116
    const-string v0, "SimLockInfoResult"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PUK2 numRetry: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/android/internal/telephony/SimLockInfoResult;->Puk2_Retry:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4b

    .line 72
    :pswitch_data_10a
    .packed-switch 0x0
        :pswitch_50
        :pswitch_6d
        :pswitch_ab
        :pswitch_ca
        :pswitch_ea
        :pswitch_8c
        :pswitch_ca
    .end packed-switch
.end method


# virtual methods
.method public getLockPin2Key()I
    .registers 2

    .prologue
    .line 198
    sget v0, Lcom/android/internal/telephony/SimLockInfoResult;->lockPin2Key:I

    return v0
.end method

.method public getLockPinKey()I
    .registers 2

    .prologue
    .line 194
    sget v0, Lcom/android/internal/telephony/SimLockInfoResult;->lockPinKey:I

    return v0
.end method

.method public getPin2Retry()I
    .registers 2

    .prologue
    .line 207
    sget v0, Lcom/android/internal/telephony/SimLockInfoResult;->Pin2_Retry:I

    return v0
.end method

.method public getPinRetry()I
    .registers 2

    .prologue
    .line 202
    sget v0, Lcom/android/internal/telephony/SimLockInfoResult;->Pin_Retry:I

    return v0
.end method

.method public getPuk2Retry()I
    .registers 2

    .prologue
    .line 217
    sget v0, Lcom/android/internal/telephony/SimLockInfoResult;->Puk2_Retry:I

    return v0
.end method

.method public getPukRetry()I
    .registers 2

    .prologue
    .line 212
    sget v0, Lcom/android/internal/telephony/SimLockInfoResult;->Puk_Retry:I

    return v0
.end method

.method public isSimBlocked()I
    .registers 2

    .prologue
    .line 224
    sget v0, Lcom/android/internal/telephony/SimLockInfoResult;->isPermBlocked:I

    return v0
.end method

.method setLockInfoResult(Lcom/android/internal/telephony/SimLockInfoResult;)V
    .registers 6
    .parameter "simLockInfoResult"

    .prologue
    const/4 v3, 0x0

    const-string v2, "SimLockInfoResult"

    .line 128
    sget v0, Lcom/android/internal/telephony/SimLockInfoResult;->num_lock_type:I

    sput v0, Lcom/android/internal/telephony/SimLockInfoResult;->num_lock_type:I

    .line 129
    sget v0, Lcom/android/internal/telephony/SimLockInfoResult;->lockType:I

    sput v0, Lcom/android/internal/telephony/SimLockInfoResult;->lockType:I

    .line 130
    sget v0, Lcom/android/internal/telephony/SimLockInfoResult;->lockKey:I

    sput v0, Lcom/android/internal/telephony/SimLockInfoResult;->lockKey:I

    .line 131
    sget v0, Lcom/android/internal/telephony/SimLockInfoResult;->numRetry:I

    sput v0, Lcom/android/internal/telephony/SimLockInfoResult;->numRetry:I

    .line 132
    const-string v0, "SimLockInfoResult"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "num:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/android/internal/telephony/SimLockInfoResult;->num_lock_type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lockType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/android/internal/telephony/SimLockInfoResult;->lockType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lock_key:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/android/internal/telephony/SimLockInfoResult;->lockKey:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", numRetry:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/android/internal/telephony/SimLockInfoResult;->numRetry:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    sget v0, Lcom/android/internal/telephony/SimLockInfoResult;->lockType:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_5d

    .line 135
    sget v0, Lcom/android/internal/telephony/SimLockInfoResult;->numRetry:I

    sput v0, Lcom/android/internal/telephony/SimLockInfoResult;->Puk2_Retry:I

    .line 190
    :goto_5c
    return-void

    .line 138
    :cond_5d
    sget v0, Lcom/android/internal/telephony/SimLockInfoResult;->lockKey:I

    packed-switch v0, :pswitch_data_138

    goto :goto_5c

    .line 141
    :pswitch_63
    sget v0, Lcom/android/internal/telephony/SimLockInfoResult;->numRetry:I

    sput v0, Lcom/android/internal/telephony/SimLockInfoResult;->Pin_Retry:I

    .line 142
    const-string v0, "SimLockInfoResult"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NOT_NEED numRetry: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/android/internal/telephony/SimLockInfoResult;->Pin_Retry:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5c

    .line 146
    :pswitch_82
    sget v0, Lcom/android/internal/telephony/SimLockInfoResult;->numRetry:I

    sput v0, Lcom/android/internal/telephony/SimLockInfoResult;->Pin_Retry:I

    .line 147
    sget v0, Lcom/android/internal/telephony/SimLockInfoResult;->lockKey:I

    sput v0, Lcom/android/internal/telephony/SimLockInfoResult;->lockPinKey:I

    .line 148
    const-string v0, "SimLockInfoResult"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PIN numRetry: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/android/internal/telephony/SimLockInfoResult;->Pin_Retry:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5c

    .line 152
    :pswitch_a5
    sget v0, Lcom/android/internal/telephony/SimLockInfoResult;->lockType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_bd

    .line 153
    sput v3, Lcom/android/internal/telephony/SimLockInfoResult;->Pin_Retry:I

    .line 154
    sput v3, Lcom/android/internal/telephony/SimLockInfoResult;->Puk_Retry:I

    .line 155
    const/4 v0, 0x1

    sput v0, Lcom/android/internal/telephony/SimLockInfoResult;->isPermBlocked:I

    .line 156
    sget v0, Lcom/android/internal/telephony/SimLockInfoResult;->lockKey:I

    sput v0, Lcom/android/internal/telephony/SimLockInfoResult;->lockPinKey:I

    .line 164
    :cond_b5
    :goto_b5
    const-string v0, "SimLockInfoResult"

    const-string v0, "Permernet blocked"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5c

    .line 158
    :cond_bd
    sget v0, Lcom/android/internal/telephony/SimLockInfoResult;->lockType:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_b5

    .line 159
    sput v3, Lcom/android/internal/telephony/SimLockInfoResult;->Pin2_Retry:I

    .line 160
    sput v3, Lcom/android/internal/telephony/SimLockInfoResult;->Puk2_Retry:I

    .line 161
    sget v0, Lcom/android/internal/telephony/SimLockInfoResult;->lockKey:I

    sput v0, Lcom/android/internal/telephony/SimLockInfoResult;->lockPin2Key:I

    goto :goto_b5

    .line 167
    :pswitch_cc
    sget v0, Lcom/android/internal/telephony/SimLockInfoResult;->numRetry:I

    sput v0, Lcom/android/internal/telephony/SimLockInfoResult;->Puk_Retry:I

    .line 168
    sget v0, Lcom/android/internal/telephony/SimLockInfoResult;->lockKey:I

    sput v0, Lcom/android/internal/telephony/SimLockInfoResult;->lockPinKey:I

    .line 169
    const-string v0, "SimLockInfoResult"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PUK numRetry: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/android/internal/telephony/SimLockInfoResult;->Puk_Retry:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5c

    .line 174
    :pswitch_f0
    sget v0, Lcom/android/internal/telephony/SimLockInfoResult;->lockKey:I

    sput v0, Lcom/android/internal/telephony/SimLockInfoResult;->lockPin2Key:I

    .line 175
    sget v0, Lcom/android/internal/telephony/SimLockInfoResult;->numRetry:I

    sput v0, Lcom/android/internal/telephony/SimLockInfoResult;->Pin2_Retry:I

    .line 176
    const-string v0, "SimLockInfoResult"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PIN2 numRetry: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/android/internal/telephony/SimLockInfoResult;->Pin2_Retry:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5c

    .line 180
    :pswitch_114
    sget v0, Lcom/android/internal/telephony/SimLockInfoResult;->numRetry:I

    sput v0, Lcom/android/internal/telephony/SimLockInfoResult;->Puk2_Retry:I

    .line 181
    sget v0, Lcom/android/internal/telephony/SimLockInfoResult;->lockKey:I

    sput v0, Lcom/android/internal/telephony/SimLockInfoResult;->lockPin2Key:I

    .line 182
    const-string v0, "SimLockInfoResult"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PUK2 numRetry: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/android/internal/telephony/SimLockInfoResult;->Puk2_Retry:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5c

    .line 138
    :pswitch_data_138
    .packed-switch 0x0
        :pswitch_63
        :pswitch_82
        :pswitch_cc
        :pswitch_f0
        :pswitch_114
        :pswitch_a5
        :pswitch_f0
    .end packed-switch
.end method
