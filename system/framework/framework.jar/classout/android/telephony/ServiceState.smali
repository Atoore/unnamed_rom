.class public Landroid/telephony/ServiceState;
.super Ljava/lang/Object;
.source "ServiceState.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telephony/ServiceState;",
            ">;"
        }
    .end annotation
.end field

.field static final LOG_TAG:Ljava/lang/String; = "PHONE"

.field public static final RADIO_TECHNOLOGY_1xRTT:I = 0x6

.field public static final RADIO_TECHNOLOGY_EDGE:I = 0x2

.field public static final RADIO_TECHNOLOGY_EHRPD:I = 0xd

.field public static final RADIO_TECHNOLOGY_EVDO_0:I = 0x7

.field public static final RADIO_TECHNOLOGY_EVDO_A:I = 0x8

.field public static final RADIO_TECHNOLOGY_EVDO_B:I = 0xc

.field public static final RADIO_TECHNOLOGY_GPRS:I = 0x1

.field public static final RADIO_TECHNOLOGY_HSDPA:I = 0x9

.field public static final RADIO_TECHNOLOGY_HSPA:I = 0xb

.field public static final RADIO_TECHNOLOGY_HSUPA:I = 0xa

.field public static final RADIO_TECHNOLOGY_IS95A:I = 0x4

.field public static final RADIO_TECHNOLOGY_IS95B:I = 0x5

.field public static final RADIO_TECHNOLOGY_LTE:I = 0xe

.field public static final RADIO_TECHNOLOGY_UMTS:I = 0x3

.field public static final RADIO_TECHNOLOGY_UNKNOWN:I = 0x0

.field public static final REGISTRATION_STATE_HOME_NETWORK:I = 0x1

.field public static final REGISTRATION_STATE_NOT_REGISTERED_AND_NOT_SEARCHING:I = 0x0

.field public static final REGISTRATION_STATE_NOT_REGISTERED_AND_SEARCHING:I = 0x2

.field public static final REGISTRATION_STATE_REGISTRATION_DENIED:I = 0x3

.field public static final REGISTRATION_STATE_ROAMING:I = 0x5

.field public static final REGISTRATION_STATE_UNKNOWN:I = 0x4

.field public static final STATE_EMERGENCY_ONLY:I = 0x2

.field public static final STATE_IN_SERVICE:I = 0x0

.field public static final STATE_OUT_OF_SERVICE:I = 0x1

.field public static final STATE_POWER_OFF:I = 0x3


# instance fields
.field private mCdmaDefaultRoamingIndicator:I

.field private mCdmaEriIconIndex:I

.field private mCdmaEriIconMode:I

.field private mCdmaRoamingIndicator:I

.field private mCssIndicator:Z

.field private mIsEmergencyOnly:Z

.field private mIsManualNetworkSelection:Z

.field private mNetworkId:I

.field private mOperatorAlphaLong:Ljava/lang/String;

.field private mOperatorAlphaShort:Ljava/lang/String;

.field private mOperatorNumeric:Ljava/lang/String;

.field private mRadioTechnology:I

.field private mRoaming:Z

.field private mState:I

.field private mSystemId:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 227
    new-instance v0, Landroid/telephony/ServiceState$1;

    invoke-direct {v0}, Landroid/telephony/ServiceState$1;-><init>()V

    sput-object v0, Landroid/telephony/ServiceState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    const/4 v0, 0x1

    iput v0, p0, Landroid/telephony/ServiceState;->mState:I

    .line 155
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 5
    .parameter "in"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    iput v1, p0, Landroid/telephony/ServiceState;->mState:I

    .line 188
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mState:I

    .line 189
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_6e

    move v0, v1

    :goto_14
    iput-boolean v0, p0, Landroid/telephony/ServiceState;->mRoaming:Z

    .line 190
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ServiceState;->mOperatorAlphaLong:Ljava/lang/String;

    .line 191
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ServiceState;->mOperatorAlphaShort:Ljava/lang/String;

    .line 192
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ServiceState;->mOperatorNumeric:Ljava/lang/String;

    .line 193
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_70

    move v0, v1

    :goto_2f
    iput-boolean v0, p0, Landroid/telephony/ServiceState;->mIsManualNetworkSelection:Z

    .line 194
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mRadioTechnology:I

    .line 195
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_72

    move v0, v1

    :goto_3e
    iput-boolean v0, p0, Landroid/telephony/ServiceState;->mCssIndicator:Z

    .line 196
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mNetworkId:I

    .line 197
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mSystemId:I

    .line 198
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mCdmaRoamingIndicator:I

    .line 199
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mCdmaDefaultRoamingIndicator:I

    .line 200
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mCdmaEriIconIndex:I

    .line 201
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mCdmaEriIconMode:I

    .line 202
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_74

    move v0, v1

    :goto_6b
    iput-boolean v0, p0, Landroid/telephony/ServiceState;->mIsEmergencyOnly:Z

    .line 203
    return-void

    :cond_6e
    move v0, v2

    .line 189
    goto :goto_14

    :cond_70
    move v0, v2

    .line 193
    goto :goto_2f

    :cond_72
    move v0, v2

    .line 195
    goto :goto_3e

    :cond_74
    move v0, v2

    .line 202
    goto :goto_6b
.end method

.method public constructor <init>(Landroid/telephony/ServiceState;)V
    .registers 3
    .parameter "s"

    .prologue
    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    const/4 v0, 0x1

    iput v0, p0, Landroid/telephony/ServiceState;->mState:I

    .line 163
    invoke-virtual {p0, p1}, Landroid/telephony/ServiceState;->copyFrom(Landroid/telephony/ServiceState;)V

    .line 164
    return-void
.end method

.method private static equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3
    .parameter "a"
    .parameter "b"

    .prologue
    .line 565
    if-nez p0, :cond_8

    if-nez p1, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5

    :cond_8
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_5
.end method

.method public static newFromBundle(Landroid/os/Bundle;)Landroid/telephony/ServiceState;
    .registers 2
    .parameter "m"

    .prologue
    .line 146
    new-instance v0, Landroid/telephony/ServiceState;

    invoke-direct {v0}, Landroid/telephony/ServiceState;-><init>()V

    .line 147
    .local v0, ret:Landroid/telephony/ServiceState;
    invoke-direct {v0, p0}, Landroid/telephony/ServiceState;->setFromNotifierBundle(Landroid/os/Bundle;)V

    .line 148
    return-object v0
.end method

.method private setFromNotifierBundle(Landroid/os/Bundle;)V
    .registers 3
    .parameter "m"

    .prologue
    .line 575
    const-string/jumbo v0, "state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mState:I

    .line 576
    const-string/jumbo v0, "roaming"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/ServiceState;->mRoaming:Z

    .line 577
    const-string/jumbo v0, "operator-alpha-long"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ServiceState;->mOperatorAlphaLong:Ljava/lang/String;

    .line 578
    const-string/jumbo v0, "operator-alpha-short"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ServiceState;->mOperatorAlphaShort:Ljava/lang/String;

    .line 579
    const-string/jumbo v0, "operator-numeric"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ServiceState;->mOperatorNumeric:Ljava/lang/String;

    .line 580
    const-string/jumbo v0, "manual"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/ServiceState;->mIsManualNetworkSelection:Z

    .line 581
    const-string/jumbo v0, "radioTechnology"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mRadioTechnology:I

    .line 582
    const-string v0, "cssIndicator"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/ServiceState;->mCssIndicator:Z

    .line 583
    const-string/jumbo v0, "networkId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mNetworkId:I

    .line 584
    const-string/jumbo v0, "systemId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mSystemId:I

    .line 585
    const-string v0, "cdmaRoamingIndicator"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mCdmaRoamingIndicator:I

    .line 586
    const-string v0, "cdmaDefaultRoamingIndicator"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mCdmaDefaultRoamingIndicator:I

    .line 587
    const-string v0, "emergencyOnly"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/ServiceState;->mIsEmergencyOnly:Z

    .line 588
    return-void
.end method


# virtual methods
.method protected copyFrom(Landroid/telephony/ServiceState;)V
    .registers 3
    .parameter "s"

    .prologue
    .line 167
    iget v0, p1, Landroid/telephony/ServiceState;->mState:I

    iput v0, p0, Landroid/telephony/ServiceState;->mState:I

    .line 168
    iget-boolean v0, p1, Landroid/telephony/ServiceState;->mRoaming:Z

    iput-boolean v0, p0, Landroid/telephony/ServiceState;->mRoaming:Z

    .line 169
    iget-object v0, p1, Landroid/telephony/ServiceState;->mOperatorAlphaLong:Ljava/lang/String;

    iput-object v0, p0, Landroid/telephony/ServiceState;->mOperatorAlphaLong:Ljava/lang/String;

    .line 170
    iget-object v0, p1, Landroid/telephony/ServiceState;->mOperatorAlphaShort:Ljava/lang/String;

    iput-object v0, p0, Landroid/telephony/ServiceState;->mOperatorAlphaShort:Ljava/lang/String;

    .line 171
    iget-object v0, p1, Landroid/telephony/ServiceState;->mOperatorNumeric:Ljava/lang/String;

    iput-object v0, p0, Landroid/telephony/ServiceState;->mOperatorNumeric:Ljava/lang/String;

    .line 172
    iget-boolean v0, p1, Landroid/telephony/ServiceState;->mIsManualNetworkSelection:Z

    iput-boolean v0, p0, Landroid/telephony/ServiceState;->mIsManualNetworkSelection:Z

    .line 173
    iget v0, p1, Landroid/telephony/ServiceState;->mRadioTechnology:I

    iput v0, p0, Landroid/telephony/ServiceState;->mRadioTechnology:I

    .line 174
    iget-boolean v0, p1, Landroid/telephony/ServiceState;->mCssIndicator:Z

    iput-boolean v0, p0, Landroid/telephony/ServiceState;->mCssIndicator:Z

    .line 175
    iget v0, p1, Landroid/telephony/ServiceState;->mNetworkId:I

    iput v0, p0, Landroid/telephony/ServiceState;->mNetworkId:I

    .line 176
    iget v0, p1, Landroid/telephony/ServiceState;->mSystemId:I

    iput v0, p0, Landroid/telephony/ServiceState;->mSystemId:I

    .line 177
    iget v0, p1, Landroid/telephony/ServiceState;->mCdmaRoamingIndicator:I

    iput v0, p0, Landroid/telephony/ServiceState;->mCdmaRoamingIndicator:I

    .line 178
    iget v0, p1, Landroid/telephony/ServiceState;->mCdmaDefaultRoamingIndicator:I

    iput v0, p0, Landroid/telephony/ServiceState;->mCdmaDefaultRoamingIndicator:I

    .line 179
    iget v0, p1, Landroid/telephony/ServiceState;->mCdmaEriIconIndex:I

    iput v0, p0, Landroid/telephony/ServiceState;->mCdmaEriIconIndex:I

    .line 180
    iget v0, p1, Landroid/telephony/ServiceState;->mCdmaEriIconMode:I

    iput v0, p0, Landroid/telephony/ServiceState;->mCdmaEriIconMode:I

    .line 181
    iget-boolean v0, p1, Landroid/telephony/ServiceState;->mIsEmergencyOnly:Z

    iput-boolean v0, p0, Landroid/telephony/ServiceState;->mIsEmergencyOnly:Z

    .line 182
    return-void
.end method

.method public describeContents()I
    .registers 2

    .prologue
    .line 224
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .parameter "o"

    .prologue
    const/4 v5, 0x0

    .line 363
    :try_start_1
    move-object v0, p1

    check-cast v0, Landroid/telephony/ServiceState;

    move-object v2, v0
    :try_end_5
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_5} :catch_9

    .line 368
    .local v2, s:Landroid/telephony/ServiceState;
    if-nez p1, :cond_c

    move v3, v5

    .line 372
    .end local v2           #s:Landroid/telephony/ServiceState;
    :goto_8
    return v3

    .line 364
    :catch_9
    move-exception v1

    .local v1, ex:Ljava/lang/ClassCastException;
    move v3, v5

    .line 365
    goto :goto_8

    .line 372
    .end local v1           #ex:Ljava/lang/ClassCastException;
    .restart local v2       #s:Landroid/telephony/ServiceState;
    :cond_c
    iget v3, p0, Landroid/telephony/ServiceState;->mState:I

    iget v4, v2, Landroid/telephony/ServiceState;->mState:I

    if-ne v3, v4, :cond_b1

    iget-boolean v3, p0, Landroid/telephony/ServiceState;->mRoaming:Z

    iget-boolean v4, v2, Landroid/telephony/ServiceState;->mRoaming:Z

    if-ne v3, v4, :cond_b1

    iget-boolean v3, p0, Landroid/telephony/ServiceState;->mIsManualNetworkSelection:Z

    iget-boolean v4, v2, Landroid/telephony/ServiceState;->mIsManualNetworkSelection:Z

    if-ne v3, v4, :cond_b1

    iget-object v3, p0, Landroid/telephony/ServiceState;->mOperatorAlphaLong:Ljava/lang/String;

    iget-object v4, v2, Landroid/telephony/ServiceState;->mOperatorAlphaLong:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/telephony/ServiceState;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b1

    iget-object v3, p0, Landroid/telephony/ServiceState;->mOperatorAlphaShort:Ljava/lang/String;

    iget-object v4, v2, Landroid/telephony/ServiceState;->mOperatorAlphaShort:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/telephony/ServiceState;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b1

    iget-object v3, p0, Landroid/telephony/ServiceState;->mOperatorNumeric:Ljava/lang/String;

    iget-object v4, v2, Landroid/telephony/ServiceState;->mOperatorNumeric:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/telephony/ServiceState;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b1

    iget v3, p0, Landroid/telephony/ServiceState;->mRadioTechnology:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, v2, Landroid/telephony/ServiceState;->mRadioTechnology:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/ServiceState;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b1

    iget-boolean v3, p0, Landroid/telephony/ServiceState;->mCssIndicator:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-boolean v4, v2, Landroid/telephony/ServiceState;->mCssIndicator:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/ServiceState;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b1

    iget v3, p0, Landroid/telephony/ServiceState;->mNetworkId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, v2, Landroid/telephony/ServiceState;->mNetworkId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/ServiceState;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b1

    iget v3, p0, Landroid/telephony/ServiceState;->mSystemId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, v2, Landroid/telephony/ServiceState;->mSystemId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/ServiceState;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b1

    iget v3, p0, Landroid/telephony/ServiceState;->mCdmaRoamingIndicator:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, v2, Landroid/telephony/ServiceState;->mCdmaRoamingIndicator:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/ServiceState;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b1

    iget v3, p0, Landroid/telephony/ServiceState;->mCdmaDefaultRoamingIndicator:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, v2, Landroid/telephony/ServiceState;->mCdmaDefaultRoamingIndicator:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/ServiceState;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b1

    iget-boolean v3, p0, Landroid/telephony/ServiceState;->mIsEmergencyOnly:Z

    iget-boolean v4, v2, Landroid/telephony/ServiceState;->mIsEmergencyOnly:Z

    if-ne v3, v4, :cond_b1

    const/4 v3, 0x1

    goto/16 :goto_8

    :cond_b1
    move v3, v5

    goto/16 :goto_8
.end method

.method public fillInNotifierBundle(Landroid/os/Bundle;)V
    .registers 4
    .parameter "m"

    .prologue
    .line 597
    const-string/jumbo v0, "state"

    iget v1, p0, Landroid/telephony/ServiceState;->mState:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 598
    const-string/jumbo v0, "roaming"

    iget-boolean v1, p0, Landroid/telephony/ServiceState;->mRoaming:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 599
    const-string/jumbo v0, "operator-alpha-long"

    iget-object v1, p0, Landroid/telephony/ServiceState;->mOperatorAlphaLong:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    const-string/jumbo v0, "operator-alpha-short"

    iget-object v1, p0, Landroid/telephony/ServiceState;->mOperatorAlphaShort:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    const-string/jumbo v0, "operator-numeric"

    iget-object v1, p0, Landroid/telephony/ServiceState;->mOperatorNumeric:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    const-string/jumbo v0, "manual"

    iget-boolean v1, p0, Landroid/telephony/ServiceState;->mIsManualNetworkSelection:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 603
    const-string/jumbo v0, "radioTechnology"

    iget v1, p0, Landroid/telephony/ServiceState;->mRadioTechnology:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 604
    const-string v0, "cssIndicator"

    iget-boolean v1, p0, Landroid/telephony/ServiceState;->mCssIndicator:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 605
    const-string/jumbo v0, "networkId"

    iget v1, p0, Landroid/telephony/ServiceState;->mNetworkId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 606
    const-string/jumbo v0, "systemId"

    iget v1, p0, Landroid/telephony/ServiceState;->mSystemId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 607
    const-string v0, "cdmaRoamingIndicator"

    iget v1, p0, Landroid/telephony/ServiceState;->mCdmaRoamingIndicator:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 608
    const-string v0, "cdmaDefaultRoamingIndicator"

    iget v1, p0, Landroid/telephony/ServiceState;->mCdmaDefaultRoamingIndicator:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 609
    const-string v0, "emergencyOnly"

    iget-boolean v1, p0, Landroid/telephony/ServiceState;->mIsEmergencyOnly:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 610
    return-void
.end method

.method public getCdmaDefaultRoamingIndicator()I
    .registers 2

    .prologue
    .line 280
    iget v0, p0, Landroid/telephony/ServiceState;->mCdmaDefaultRoamingIndicator:I

    return v0
.end method

.method public getCdmaEriIconIndex()I
    .registers 2

    .prologue
    .line 287
    iget v0, p0, Landroid/telephony/ServiceState;->mCdmaEriIconIndex:I

    return v0
.end method

.method public getCdmaEriIconMode()I
    .registers 2

    .prologue
    .line 294
    iget v0, p0, Landroid/telephony/ServiceState;->mCdmaEriIconMode:I

    return v0
.end method

.method public getCdmaRoamingIndicator()I
    .registers 2

    .prologue
    .line 273
    iget v0, p0, Landroid/telephony/ServiceState;->mCdmaRoamingIndicator:I

    return v0
.end method

.method public getCssIndicator()I
    .registers 2

    .prologue
    .line 636
    iget-boolean v0, p0, Landroid/telephony/ServiceState;->mCssIndicator:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public getIsManualSelection()Z
    .registers 2

    .prologue
    .line 342
    iget-boolean v0, p0, Landroid/telephony/ServiceState;->mIsManualNetworkSelection:Z

    return v0
.end method

.method public getNetworkId()I
    .registers 2

    .prologue
    .line 641
    iget v0, p0, Landroid/telephony/ServiceState;->mNetworkId:I

    return v0
.end method

.method public getOperatorAlphaLong()Ljava/lang/String;
    .registers 2

    .prologue
    .line 306
    iget-object v0, p0, Landroid/telephony/ServiceState;->mOperatorAlphaLong:Ljava/lang/String;

    return-object v0
.end method

.method public getOperatorAlphaShort()Ljava/lang/String;
    .registers 2

    .prologue
    .line 317
    iget-object v0, p0, Landroid/telephony/ServiceState;->mOperatorAlphaShort:Ljava/lang/String;

    return-object v0
.end method

.method public getOperatorNumeric()Ljava/lang/String;
    .registers 2

    .prologue
    .line 333
    iget-object v0, p0, Landroid/telephony/ServiceState;->mOperatorNumeric:Ljava/lang/String;

    return-object v0
.end method

.method public getRadioTechnology()I
    .registers 2

    .prologue
    .line 631
    iget v0, p0, Landroid/telephony/ServiceState;->mRadioTechnology:I

    return v0
.end method

.method public getRoaming()Z
    .registers 2

    .prologue
    .line 259
    iget-boolean v0, p0, Landroid/telephony/ServiceState;->mRoaming:Z

    return v0
.end method

.method public getState()I
    .registers 2

    .prologue
    .line 247
    iget v0, p0, Landroid/telephony/ServiceState;->mState:I

    return v0
.end method

.method public getSystemId()I
    .registers 2

    .prologue
    .line 646
    iget v0, p0, Landroid/telephony/ServiceState;->mSystemId:I

    return v0
.end method

.method public hashCode()I
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 347
    iget v0, p0, Landroid/telephony/ServiceState;->mState:I

    mul-int/lit16 v0, v0, 0x1234

    iget-boolean v1, p0, Landroid/telephony/ServiceState;->mRoaming:Z

    if-eqz v1, :cond_31

    move v1, v3

    :goto_b
    add-int/2addr v0, v1

    iget-boolean v1, p0, Landroid/telephony/ServiceState;->mIsManualNetworkSelection:Z

    if-eqz v1, :cond_33

    move v1, v3

    :goto_11
    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/telephony/ServiceState;->mOperatorAlphaLong:Ljava/lang/String;

    if-nez v1, :cond_35

    move v1, v2

    :goto_17
    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/telephony/ServiceState;->mOperatorAlphaShort:Ljava/lang/String;

    if-nez v1, :cond_3c

    move v1, v2

    :goto_1d
    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/telephony/ServiceState;->mOperatorNumeric:Ljava/lang/String;

    if-nez v1, :cond_43

    move v1, v2

    :goto_23
    add-int/2addr v0, v1

    iget v1, p0, Landroid/telephony/ServiceState;->mCdmaRoamingIndicator:I

    add-int/2addr v0, v1

    iget v1, p0, Landroid/telephony/ServiceState;->mCdmaDefaultRoamingIndicator:I

    add-int/2addr v0, v1

    iget-boolean v1, p0, Landroid/telephony/ServiceState;->mIsEmergencyOnly:Z

    if-eqz v1, :cond_4a

    move v1, v3

    :goto_2f
    add-int/2addr v0, v1

    return v0

    :cond_31
    move v1, v2

    goto :goto_b

    :cond_33
    move v1, v2

    goto :goto_11

    :cond_35
    iget-object v1, p0, Landroid/telephony/ServiceState;->mOperatorAlphaLong:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_17

    :cond_3c
    iget-object v1, p0, Landroid/telephony/ServiceState;->mOperatorAlphaShort:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1d

    :cond_43
    iget-object v1, p0, Landroid/telephony/ServiceState;->mOperatorNumeric:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_23

    :cond_4a
    move v1, v2

    goto :goto_2f
.end method

.method public isEmergencyOnly()Z
    .registers 2

    .prologue
    .line 266
    iget-boolean v0, p0, Landroid/telephony/ServiceState;->mIsEmergencyOnly:Z

    return v0
.end method

.method public setCdmaDefaultRoamingIndicator(I)V
    .registers 2
    .parameter "roaming"

    .prologue
    .line 520
    iput p1, p0, Landroid/telephony/ServiceState;->mCdmaDefaultRoamingIndicator:I

    .line 521
    return-void
.end method

.method public setCdmaEriIconIndex(I)V
    .registers 2
    .parameter "index"

    .prologue
    .line 527
    iput p1, p0, Landroid/telephony/ServiceState;->mCdmaEriIconIndex:I

    .line 528
    return-void
.end method

.method public setCdmaEriIconMode(I)V
    .registers 2
    .parameter "mode"

    .prologue
    .line 534
    iput p1, p0, Landroid/telephony/ServiceState;->mCdmaEriIconMode:I

    .line 535
    return-void
.end method

.method public setCdmaEriText(Ljava/lang/String;)V
    .registers 2
    .parameter "longName"

    .prologue
    .line 550
    iput-object p1, p0, Landroid/telephony/ServiceState;->mOperatorAlphaLong:Ljava/lang/String;

    .line 551
    return-void
.end method

.method public setCdmaRoamingIndicator(I)V
    .registers 2
    .parameter "roaming"

    .prologue
    .line 513
    iput p1, p0, Landroid/telephony/ServiceState;->mCdmaRoamingIndicator:I

    .line 514
    return-void
.end method

.method public setCssIndicator(I)V
    .registers 3
    .parameter "css"

    .prologue
    .line 620
    if-eqz p1, :cond_6

    const/4 v0, 0x1

    :goto_3
    iput-boolean v0, p0, Landroid/telephony/ServiceState;->mCssIndicator:Z

    .line 621
    return-void

    .line 620
    :cond_6
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public setEmergencyOnly(Z)V
    .registers 2
    .parameter "emergencyOnly"

    .prologue
    .line 506
    iput-boolean p1, p0, Landroid/telephony/ServiceState;->mIsEmergencyOnly:Z

    .line 507
    return-void
.end method

.method public setIsManualSelection(Z)V
    .registers 2
    .parameter "isManual"

    .prologue
    .line 554
    iput-boolean p1, p0, Landroid/telephony/ServiceState;->mIsManualNetworkSelection:Z

    .line 555
    return-void
.end method

.method public setOperatorName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "longName"
    .parameter "shortName"
    .parameter "numeric"

    .prologue
    .line 538
    iput-object p1, p0, Landroid/telephony/ServiceState;->mOperatorAlphaLong:Ljava/lang/String;

    .line 539
    iput-object p2, p0, Landroid/telephony/ServiceState;->mOperatorAlphaShort:Ljava/lang/String;

    .line 540
    iput-object p3, p0, Landroid/telephony/ServiceState;->mOperatorNumeric:Ljava/lang/String;

    .line 541
    return-void
.end method

.method public setRadioTechnology(I)V
    .registers 2
    .parameter "state"

    .prologue
    .line 615
    iput p1, p0, Landroid/telephony/ServiceState;->mRadioTechnology:I

    .line 616
    return-void
.end method

.method public setRoaming(Z)V
    .registers 2
    .parameter "roaming"

    .prologue
    .line 498
    iput-boolean p1, p0, Landroid/telephony/ServiceState;->mRoaming:Z

    .line 499
    return-void
.end method

.method public setState(I)V
    .registers 2
    .parameter "state"

    .prologue
    .line 494
    iput p1, p0, Landroid/telephony/ServiceState;->mState:I

    .line 495
    return-void
.end method

.method public setStateOff()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 476
    const/4 v0, 0x3

    iput v0, p0, Landroid/telephony/ServiceState;->mState:I

    .line 477
    iput-boolean v2, p0, Landroid/telephony/ServiceState;->mRoaming:Z

    .line 478
    iput-object v3, p0, Landroid/telephony/ServiceState;->mOperatorAlphaLong:Ljava/lang/String;

    .line 479
    iput-object v3, p0, Landroid/telephony/ServiceState;->mOperatorAlphaShort:Ljava/lang/String;

    .line 480
    iput-object v3, p0, Landroid/telephony/ServiceState;->mOperatorNumeric:Ljava/lang/String;

    .line 481
    iput-boolean v2, p0, Landroid/telephony/ServiceState;->mIsManualNetworkSelection:Z

    .line 482
    iput v2, p0, Landroid/telephony/ServiceState;->mRadioTechnology:I

    .line 483
    iput-boolean v2, p0, Landroid/telephony/ServiceState;->mCssIndicator:Z

    .line 484
    iput v1, p0, Landroid/telephony/ServiceState;->mNetworkId:I

    .line 485
    iput v1, p0, Landroid/telephony/ServiceState;->mSystemId:I

    .line 486
    iput v1, p0, Landroid/telephony/ServiceState;->mCdmaRoamingIndicator:I

    .line 487
    iput v1, p0, Landroid/telephony/ServiceState;->mCdmaDefaultRoamingIndicator:I

    .line 488
    iput v1, p0, Landroid/telephony/ServiceState;->mCdmaEriIconIndex:I

    .line 489
    iput v1, p0, Landroid/telephony/ServiceState;->mCdmaEriIconMode:I

    .line 490
    iput-boolean v2, p0, Landroid/telephony/ServiceState;->mIsEmergencyOnly:Z

    .line 491
    return-void
.end method

.method public setStateOutOfService()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 457
    const/4 v0, 0x1

    iput v0, p0, Landroid/telephony/ServiceState;->mState:I

    .line 458
    iput-boolean v2, p0, Landroid/telephony/ServiceState;->mRoaming:Z

    .line 459
    iput-object v3, p0, Landroid/telephony/ServiceState;->mOperatorAlphaLong:Ljava/lang/String;

    .line 460
    iput-object v3, p0, Landroid/telephony/ServiceState;->mOperatorAlphaShort:Ljava/lang/String;

    .line 461
    iput-object v3, p0, Landroid/telephony/ServiceState;->mOperatorNumeric:Ljava/lang/String;

    .line 462
    iput-boolean v2, p0, Landroid/telephony/ServiceState;->mIsManualNetworkSelection:Z

    .line 463
    iput v2, p0, Landroid/telephony/ServiceState;->mRadioTechnology:I

    .line 464
    iput-boolean v2, p0, Landroid/telephony/ServiceState;->mCssIndicator:Z

    .line 465
    iput v1, p0, Landroid/telephony/ServiceState;->mNetworkId:I

    .line 466
    iput v1, p0, Landroid/telephony/ServiceState;->mSystemId:I

    .line 467
    iput v1, p0, Landroid/telephony/ServiceState;->mCdmaRoamingIndicator:I

    .line 468
    iput v1, p0, Landroid/telephony/ServiceState;->mCdmaDefaultRoamingIndicator:I

    .line 469
    iput v1, p0, Landroid/telephony/ServiceState;->mCdmaEriIconIndex:I

    .line 470
    iput v1, p0, Landroid/telephony/ServiceState;->mCdmaEriIconMode:I

    .line 471
    iput-boolean v2, p0, Landroid/telephony/ServiceState;->mIsEmergencyOnly:Z

    .line 472
    return-void
.end method

.method public setSystemAndNetworkId(II)V
    .registers 3
    .parameter "systemId"
    .parameter "networkId"

    .prologue
    .line 625
    iput p1, p0, Landroid/telephony/ServiceState;->mSystemId:I

    .line 626
    iput p2, p0, Landroid/telephony/ServiceState;->mNetworkId:I

    .line 627
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    const-string v3, " "

    .line 390
    new-instance v0, Ljava/lang/String;

    const-string v1, "Error in radioTechnology"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 391
    .local v0, radioTechnology:Ljava/lang/String;
    iget v1, p0, Landroid/telephony/ServiceState;->mRadioTechnology:I

    packed-switch v1, :pswitch_data_10a

    .line 438
    const-string v1, "PHONE"

    const-string/jumbo v2, "mRadioTechnology variable out of range."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    :goto_16
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Landroid/telephony/ServiceState;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/telephony/ServiceState;->mRoaming:Z

    if-eqz v2, :cond_fd

    const-string/jumbo v2, "roaming"

    :goto_2e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/ServiceState;->mOperatorAlphaLong:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/ServiceState;->mOperatorAlphaShort:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/ServiceState;->mOperatorNumeric:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/telephony/ServiceState;->mIsManualNetworkSelection:Z

    if-eqz v2, :cond_101

    const-string v2, "(manual)"

    :goto_62
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/telephony/ServiceState;->mCssIndicator:Z

    if-eqz v2, :cond_105

    const-string v2, "CSS supported"

    :goto_7c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/telephony/ServiceState;->mNetworkId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/telephony/ServiceState;->mSystemId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "RoamInd: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/telephony/ServiceState;->mCdmaRoamingIndicator:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "DefRoamInd: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/telephony/ServiceState;->mCdmaDefaultRoamingIndicator:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "EmergOnly: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/telephony/ServiceState;->mIsEmergencyOnly:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 393
    :pswitch_c1
    const-string v0, "Unknown"

    .line 394
    goto/16 :goto_16

    .line 396
    :pswitch_c5
    const-string v0, "GPRS"

    .line 397
    goto/16 :goto_16

    .line 399
    :pswitch_c9
    const-string v0, "EDGE"

    .line 400
    goto/16 :goto_16

    .line 402
    :pswitch_cd
    const-string v0, "UMTS"

    .line 403
    goto/16 :goto_16

    .line 405
    :pswitch_d1
    const-string v0, "IS95A"

    .line 406
    goto/16 :goto_16

    .line 408
    :pswitch_d5
    const-string v0, "IS95B"

    .line 409
    goto/16 :goto_16

    .line 411
    :pswitch_d9
    const-string v0, "1xRTT"

    .line 412
    goto/16 :goto_16

    .line 414
    :pswitch_dd
    const-string v0, "EvDo rev. 0"

    .line 415
    goto/16 :goto_16

    .line 417
    :pswitch_e1
    const-string v0, "EvDo rev. A"

    .line 418
    goto/16 :goto_16

    .line 420
    :pswitch_e5
    const-string v0, "HSDPA"

    .line 421
    goto/16 :goto_16

    .line 423
    :pswitch_e9
    const-string v0, "HSUPA"

    .line 424
    goto/16 :goto_16

    .line 426
    :pswitch_ed
    const-string v0, "HSPA"

    .line 427
    goto/16 :goto_16

    .line 429
    :pswitch_f1
    const-string v0, "EvDo rev. B"

    .line 430
    goto/16 :goto_16

    .line 432
    :pswitch_f5
    const-string v0, "EHRPD"

    .line 433
    goto/16 :goto_16

    .line 435
    :pswitch_f9
    const-string v0, "LTE"

    .line 436
    goto/16 :goto_16

    .line 442
    :cond_fd
    const-string v2, "home"

    goto/16 :goto_2e

    :cond_101
    const-string v2, ""

    goto/16 :goto_62

    :cond_105
    const-string v2, "CSS not supported"

    goto/16 :goto_7c

    .line 391
    nop

    :pswitch_data_10a
    .packed-switch 0x0
        :pswitch_c1
        :pswitch_c5
        :pswitch_c9
        :pswitch_cd
        :pswitch_d1
        :pswitch_d5
        :pswitch_d9
        :pswitch_dd
        :pswitch_e1
        :pswitch_e5
        :pswitch_e9
        :pswitch_ed
        :pswitch_f1
        :pswitch_f5
        :pswitch_f9
    .end packed-switch
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .parameter "out"
    .parameter "flags"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 206
    iget v0, p0, Landroid/telephony/ServiceState;->mState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 207
    iget-boolean v0, p0, Landroid/telephony/ServiceState;->mRoaming:Z

    if-eqz v0, :cond_5a

    move v0, v2

    :goto_c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 208
    iget-object v0, p0, Landroid/telephony/ServiceState;->mOperatorAlphaLong:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 209
    iget-object v0, p0, Landroid/telephony/ServiceState;->mOperatorAlphaShort:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 210
    iget-object v0, p0, Landroid/telephony/ServiceState;->mOperatorNumeric:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 211
    iget-boolean v0, p0, Landroid/telephony/ServiceState;->mIsManualNetworkSelection:Z

    if-eqz v0, :cond_5c

    move v0, v2

    :goto_23
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 212
    iget v0, p0, Landroid/telephony/ServiceState;->mRadioTechnology:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 213
    iget-boolean v0, p0, Landroid/telephony/ServiceState;->mCssIndicator:Z

    if-eqz v0, :cond_5e

    move v0, v2

    :goto_30
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 214
    iget v0, p0, Landroid/telephony/ServiceState;->mNetworkId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 215
    iget v0, p0, Landroid/telephony/ServiceState;->mSystemId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 216
    iget v0, p0, Landroid/telephony/ServiceState;->mCdmaRoamingIndicator:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 217
    iget v0, p0, Landroid/telephony/ServiceState;->mCdmaDefaultRoamingIndicator:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 218
    iget v0, p0, Landroid/telephony/ServiceState;->mCdmaEriIconIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 219
    iget v0, p0, Landroid/telephony/ServiceState;->mCdmaEriIconMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 220
    iget-boolean v0, p0, Landroid/telephony/ServiceState;->mIsEmergencyOnly:Z

    if-eqz v0, :cond_60

    move v0, v2

    :goto_56
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 221
    return-void

    :cond_5a
    move v0, v1

    .line 207
    goto :goto_c

    :cond_5c
    move v0, v1

    .line 211
    goto :goto_23

    :cond_5e
    move v0, v1

    .line 213
    goto :goto_30

    :cond_60
    move v0, v1

    .line 220
    goto :goto_56
.end method
