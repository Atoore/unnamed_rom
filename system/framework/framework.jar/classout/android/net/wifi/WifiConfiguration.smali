.class public Landroid/net/wifi/WifiConfiguration;
.super Ljava/lang/Object;
.source "WifiConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/WifiConfiguration$Status;,
        Landroid/net/wifi/WifiConfiguration$GroupCipher;,
        Landroid/net/wifi/WifiConfiguration$PairwiseCipher;,
        Landroid/net/wifi/WifiConfiguration$AuthAlgorithm;,
        Landroid/net/wifi/WifiConfiguration$Protocol;,
        Landroid/net/wifi/WifiConfiguration$KeyMgmt;,
        Landroid/net/wifi/WifiConfiguration$EnterpriseField;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field public static final bssidVarName:Ljava/lang/String; = "bssid"

.field public static final hiddenSSIDVarName:Ljava/lang/String; = "scan_ssid"

.field public static final priorityVarName:Ljava/lang/String; = "priority"

.field public static final pskVarName:Ljava/lang/String; = "psk"

.field public static final ssidVarName:Ljava/lang/String; = "ssid"

.field public static final wepKeyVarNames:[Ljava/lang/String; = null

.field public static final wepTxKeyIdxVarName:Ljava/lang/String; = "wep_tx_keyidx"


# instance fields
.field public BSSID:Ljava/lang/String;

.field public SSID:Ljava/lang/String;

.field public allowedAuthAlgorithms:Ljava/util/BitSet;

.field public allowedGroupCiphers:Ljava/util/BitSet;

.field public allowedKeyManagement:Ljava/util/BitSet;

.field public allowedPairwiseCiphers:Ljava/util/BitSet;

.field public allowedProtocols:Ljava/util/BitSet;

.field public anonymous_identity:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

.field public ca_cert:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

.field public client_cert:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

.field public eap:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

.field public enterpriseFields:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;

.field public hiddenSSID:Z

.field public identity:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

.field public networkId:I

.field public pac_file:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

.field public password:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

.field public phase1:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

.field public phase2:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

.field public preSharedKey:Ljava/lang/String;

.field public priority:I

.field public private_key:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

.field public status:I

.field public wepKeys:[Ljava/lang/String;

.field public wepTxKeyIndex:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 38
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "wep_key0"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "wep_key1"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "wep_key2"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "wep_key3"

    aput-object v2, v0, v1

    sput-object v0, Landroid/net/wifi/WifiConfiguration;->wepKeyVarNames:[Ljava/lang/String;

    .line 466
    new-instance v0, Landroid/net/wifi/WifiConfiguration$1;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration$1;-><init>()V

    sput-object v0, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 12

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 304
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v5, Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    const-string v6, "eap"

    invoke-direct {v5, p0, v6, v8}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;-><init>(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Landroid/net/wifi/WifiConfiguration$1;)V

    iput-object v5, p0, Landroid/net/wifi/WifiConfiguration;->eap:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    .line 72
    new-instance v5, Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    const-string/jumbo v6, "phase1"

    invoke-direct {v5, p0, v6, v8}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;-><init>(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Landroid/net/wifi/WifiConfiguration$1;)V

    iput-object v5, p0, Landroid/net/wifi/WifiConfiguration;->phase1:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    .line 74
    new-instance v5, Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    const-string/jumbo v6, "phase2"

    invoke-direct {v5, p0, v6, v8}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;-><init>(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Landroid/net/wifi/WifiConfiguration$1;)V

    iput-object v5, p0, Landroid/net/wifi/WifiConfiguration;->phase2:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    .line 76
    new-instance v5, Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    const-string/jumbo v6, "pac_file"

    invoke-direct {v5, p0, v6, v8}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;-><init>(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Landroid/net/wifi/WifiConfiguration$1;)V

    iput-object v5, p0, Landroid/net/wifi/WifiConfiguration;->pac_file:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    .line 78
    new-instance v5, Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    const-string v6, "identity"

    invoke-direct {v5, p0, v6, v8}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;-><init>(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Landroid/net/wifi/WifiConfiguration$1;)V

    iput-object v5, p0, Landroid/net/wifi/WifiConfiguration;->identity:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    .line 80
    new-instance v5, Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    const-string v6, "anonymous_identity"

    invoke-direct {v5, p0, v6, v8}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;-><init>(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Landroid/net/wifi/WifiConfiguration$1;)V

    iput-object v5, p0, Landroid/net/wifi/WifiConfiguration;->anonymous_identity:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    .line 82
    new-instance v5, Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    const-string/jumbo v6, "password"

    invoke-direct {v5, p0, v6, v8}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;-><init>(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Landroid/net/wifi/WifiConfiguration$1;)V

    iput-object v5, p0, Landroid/net/wifi/WifiConfiguration;->password:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    .line 84
    new-instance v5, Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    const-string v6, "client_cert"

    invoke-direct {v5, p0, v6, v8}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;-><init>(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Landroid/net/wifi/WifiConfiguration$1;)V

    iput-object v5, p0, Landroid/net/wifi/WifiConfiguration;->client_cert:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    .line 86
    new-instance v5, Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    const-string/jumbo v6, "private_key"

    invoke-direct {v5, p0, v6, v8}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;-><init>(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Landroid/net/wifi/WifiConfiguration$1;)V

    iput-object v5, p0, Landroid/net/wifi/WifiConfiguration;->private_key:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    .line 88
    new-instance v5, Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    const-string v6, "ca_cert"

    invoke-direct {v5, p0, v6, v8}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;-><init>(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Landroid/net/wifi/WifiConfiguration$1;)V

    iput-object v5, p0, Landroid/net/wifi/WifiConfiguration;->ca_cert:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    .line 91
    const/16 v5, 0xa

    new-array v5, v5, [Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v6, p0, Landroid/net/wifi/WifiConfiguration;->eap:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    aput-object v6, v5, v9

    const/4 v6, 0x1

    iget-object v7, p0, Landroid/net/wifi/WifiConfiguration;->phase1:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    iget-object v7, p0, Landroid/net/wifi/WifiConfiguration;->phase2:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    aput-object v7, v5, v6

    const/4 v6, 0x3

    iget-object v7, p0, Landroid/net/wifi/WifiConfiguration;->pac_file:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    aput-object v7, v5, v6

    iget-object v6, p0, Landroid/net/wifi/WifiConfiguration;->identity:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    aput-object v6, v5, v10

    const/4 v6, 0x5

    iget-object v7, p0, Landroid/net/wifi/WifiConfiguration;->anonymous_identity:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    aput-object v7, v5, v6

    const/4 v6, 0x6

    iget-object v7, p0, Landroid/net/wifi/WifiConfiguration;->password:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    aput-object v7, v5, v6

    const/4 v6, 0x7

    iget-object v7, p0, Landroid/net/wifi/WifiConfiguration;->client_cert:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    aput-object v7, v5, v6

    const/16 v6, 0x8

    iget-object v7, p0, Landroid/net/wifi/WifiConfiguration;->private_key:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    aput-object v7, v5, v6

    const/16 v6, 0x9

    iget-object v7, p0, Landroid/net/wifi/WifiConfiguration;->ca_cert:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    aput-object v7, v5, v6

    iput-object v5, p0, Landroid/net/wifi/WifiConfiguration;->enterpriseFields:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    .line 305
    const/4 v5, -0x1

    iput v5, p0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 306
    iput-object v8, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 307
    iput-object v8, p0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    .line 308
    iput v9, p0, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 309
    iput-boolean v9, p0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 310
    new-instance v5, Ljava/util/BitSet;

    invoke-direct {v5}, Ljava/util/BitSet;-><init>()V

    iput-object v5, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 311
    new-instance v5, Ljava/util/BitSet;

    invoke-direct {v5}, Ljava/util/BitSet;-><init>()V

    iput-object v5, p0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    .line 312
    new-instance v5, Ljava/util/BitSet;

    invoke-direct {v5}, Ljava/util/BitSet;-><init>()V

    iput-object v5, p0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    .line 313
    new-instance v5, Ljava/util/BitSet;

    invoke-direct {v5}, Ljava/util/BitSet;-><init>()V

    iput-object v5, p0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    .line 314
    new-instance v5, Ljava/util/BitSet;

    invoke-direct {v5}, Ljava/util/BitSet;-><init>()V

    iput-object v5, p0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    .line 315
    new-array v5, v10, [Ljava/lang/String;

    iput-object v5, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    .line 316
    const/4 v2, 0x0

    .local v2, i:I
    :goto_d0
    iget-object v5, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    array-length v5, v5

    if-ge v2, v5, :cond_dc

    .line 317
    iget-object v5, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aput-object v8, v5, v2

    .line 316
    add-int/lit8 v2, v2, 0x1

    goto :goto_d0

    .line 318
    :cond_dc
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->enterpriseFields:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    .local v0, arr$:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_e0
    if-ge v3, v4, :cond_ea

    aget-object v1, v0, v3

    .line 319
    .local v1, field:Landroid/net/wifi/WifiConfiguration$EnterpriseField;
    invoke-virtual {v1, v8}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 318
    add-int/lit8 v3, v3, 0x1

    goto :goto_e0

    .line 321
    .end local v1           #field:Landroid/net/wifi/WifiConfiguration$EnterpriseField;
    :cond_ea
    return-void
.end method

.method static synthetic access$100(Landroid/os/Parcel;)Ljava/util/BitSet;
    .registers 2
    .parameter "x0"

    .prologue
    .line 29
    invoke-static {p0}, Landroid/net/wifi/WifiConfiguration;->readBitSet(Landroid/os/Parcel;)Ljava/util/BitSet;

    move-result-object v0

    return-object v0
.end method

.method private static readBitSet(Landroid/os/Parcel;)Ljava/util/BitSet;
    .registers 5
    .parameter "src"

    .prologue
    .line 418
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 420
    .local v0, cardinality:I
    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2}, Ljava/util/BitSet;-><init>()V

    .line 421
    .local v2, set:Ljava/util/BitSet;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_a
    if-ge v1, v0, :cond_16

    .line 422
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 421
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 424
    :cond_16
    return-object v2
.end method

.method private static writeBitSet(Landroid/os/Parcel;Ljava/util/BitSet;)V
    .registers 4
    .parameter "dest"
    .parameter "set"

    .prologue
    .line 428
    const/4 v0, -0x1

    .line 430
    .local v0, nextSetBit:I
    invoke-virtual {p1}, Ljava/util/BitSet;->cardinality()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 432
    :goto_8
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_15

    .line 433
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8

    .line 434
    :cond_15
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 438
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 15

    .prologue
    .line 324
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    .line 325
    .local v9, sbuf:Ljava/lang/StringBuffer;
    iget v11, p0, Landroid/net/wifi/WifiConfiguration;->status:I

    if-nez v11, :cond_6d

    .line 326
    const-string v11, "* "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 330
    :cond_e
    :goto_e
    const-string v11, "ID: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    iget v12, p0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v11

    const-string v12, " SSID: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    iget-object v12, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    const-string v12, " BSSID: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    iget-object v12, p0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    const-string v12, " PRIO: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    iget v12, p0, Landroid/net/wifi/WifiConfiguration;->priority:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v11

    const/16 v12, 0xa

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 333
    const-string v11, " KeyMgmt:"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 334
    const/4 v5, 0x0

    .local v5, k:I
    :goto_49
    iget-object v11, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v11}, Ljava/util/BitSet;->size()I

    move-result v11

    if-ge v5, v11, :cond_7e

    .line 335
    iget-object v11, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v11, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v11

    if-eqz v11, :cond_6a

    .line 336
    const-string v11, " "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 337
    sget-object v11, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    array-length v11, v11

    if-ge v5, v11, :cond_78

    .line 338
    sget-object v11, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    aget-object v11, v11, v5

    invoke-virtual {v9, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 334
    :cond_6a
    :goto_6a
    add-int/lit8 v5, v5, 0x1

    goto :goto_49

    .line 327
    .end local v5           #k:I
    :cond_6d
    iget v11, p0, Landroid/net/wifi/WifiConfiguration;->status:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_e

    .line 328
    const-string v11, "- "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_e

    .line 340
    .restart local v5       #k:I
    :cond_78
    const-string v11, "??"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_6a

    .line 344
    :cond_7e
    const-string v11, " Protocols:"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 345
    const/4 v7, 0x0

    .local v7, p:I
    :goto_84
    iget-object v11, p0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-virtual {v11}, Ljava/util/BitSet;->size()I

    move-result v11

    if-ge v7, v11, :cond_ae

    .line 346
    iget-object v11, p0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-virtual {v11, v7}, Ljava/util/BitSet;->get(I)Z

    move-result v11

    if-eqz v11, :cond_a5

    .line 347
    const-string v11, " "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 348
    sget-object v11, Landroid/net/wifi/WifiConfiguration$Protocol;->strings:[Ljava/lang/String;

    array-length v11, v11

    if-ge v7, v11, :cond_a8

    .line 349
    sget-object v11, Landroid/net/wifi/WifiConfiguration$Protocol;->strings:[Ljava/lang/String;

    aget-object v11, v11, v7

    invoke-virtual {v9, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 345
    :cond_a5
    :goto_a5
    add-int/lit8 v7, v7, 0x1

    goto :goto_84

    .line 351
    :cond_a8
    const-string v11, "??"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_a5

    .line 355
    :cond_ae
    const/16 v11, 0xa

    invoke-virtual {v9, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 356
    const-string v11, " AuthAlgorithms:"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 357
    const/4 v0, 0x0

    .local v0, a:I
    :goto_b9
    iget-object v11, p0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v11}, Ljava/util/BitSet;->size()I

    move-result v11

    if-ge v0, v11, :cond_e3

    .line 358
    iget-object v11, p0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v11, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v11

    if-eqz v11, :cond_da

    .line 359
    const-string v11, " "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 360
    sget-object v11, Landroid/net/wifi/WifiConfiguration$AuthAlgorithm;->strings:[Ljava/lang/String;

    array-length v11, v11

    if-ge v0, v11, :cond_dd

    .line 361
    sget-object v11, Landroid/net/wifi/WifiConfiguration$AuthAlgorithm;->strings:[Ljava/lang/String;

    aget-object v11, v11, v0

    invoke-virtual {v9, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 357
    :cond_da
    :goto_da
    add-int/lit8 v0, v0, 0x1

    goto :goto_b9

    .line 363
    :cond_dd
    const-string v11, "??"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_da

    .line 367
    :cond_e3
    const/16 v11, 0xa

    invoke-virtual {v9, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 368
    const-string v11, " PairwiseCiphers:"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 369
    const/4 v8, 0x0

    .local v8, pc:I
    :goto_ee
    iget-object v11, p0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v11}, Ljava/util/BitSet;->size()I

    move-result v11

    if-ge v8, v11, :cond_118

    .line 370
    iget-object v11, p0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v11, v8}, Ljava/util/BitSet;->get(I)Z

    move-result v11

    if-eqz v11, :cond_10f

    .line 371
    const-string v11, " "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 372
    sget-object v11, Landroid/net/wifi/WifiConfiguration$PairwiseCipher;->strings:[Ljava/lang/String;

    array-length v11, v11

    if-ge v8, v11, :cond_112

    .line 373
    sget-object v11, Landroid/net/wifi/WifiConfiguration$PairwiseCipher;->strings:[Ljava/lang/String;

    aget-object v11, v11, v8

    invoke-virtual {v9, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 369
    :cond_10f
    :goto_10f
    add-int/lit8 v8, v8, 0x1

    goto :goto_ee

    .line 375
    :cond_112
    const-string v11, "??"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_10f

    .line 379
    :cond_118
    const/16 v11, 0xa

    invoke-virtual {v9, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 380
    const-string v11, " GroupCiphers:"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 381
    const/4 v3, 0x0

    .local v3, gc:I
    :goto_123
    iget-object v11, p0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v11}, Ljava/util/BitSet;->size()I

    move-result v11

    if-ge v3, v11, :cond_14d

    .line 382
    iget-object v11, p0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v11, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v11

    if-eqz v11, :cond_144

    .line 383
    const-string v11, " "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 384
    sget-object v11, Landroid/net/wifi/WifiConfiguration$GroupCipher;->strings:[Ljava/lang/String;

    array-length v11, v11

    if-ge v3, v11, :cond_147

    .line 385
    sget-object v11, Landroid/net/wifi/WifiConfiguration$GroupCipher;->strings:[Ljava/lang/String;

    aget-object v11, v11, v3

    invoke-virtual {v9, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 381
    :cond_144
    :goto_144
    add-int/lit8 v3, v3, 0x1

    goto :goto_123

    .line 387
    :cond_147
    const-string v11, "??"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_144

    .line 391
    :cond_14d
    const/16 v11, 0xa

    invoke-virtual {v9, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v11

    const-string v12, " PSK: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 392
    iget-object v11, p0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    if-eqz v11, :cond_161

    .line 393
    const/16 v11, 0x2a

    invoke-virtual {v9, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 396
    :cond_161
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->enterpriseFields:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    .local v1, arr$:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;
    array-length v6, v1

    .local v6, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_165
    if-ge v4, v6, :cond_19b

    aget-object v2, v1, v4

    .line 397
    .local v2, field:Landroid/net/wifi/WifiConfiguration$EnterpriseField;
    const/16 v11, 0xa

    invoke-virtual {v9, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->varName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ": "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 398
    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v10

    .line 399
    .local v10, value:Ljava/lang/String;
    if-eqz v10, :cond_198

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 396
    :cond_198
    add-int/lit8 v4, v4, 0x1

    goto :goto_165

    .line 401
    .end local v2           #field:Landroid/net/wifi/WifiConfiguration$EnterpriseField;
    .end local v10           #value:Ljava/lang/String;
    :cond_19b
    const/16 v11, 0xa

    invoke-virtual {v9, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 402
    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    return-object v11
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 9
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 443
    iget v5, p0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 444
    iget v5, p0, Landroid/net/wifi/WifiConfiguration;->status:I

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 445
    iget-object v5, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 446
    iget-object v5, p0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 447
    iget-object v5, p0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 448
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1d
    if-ge v2, v3, :cond_27

    aget-object v4, v0, v2

    .line 449
    .local v4, wepKey:Ljava/lang/String;
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 448
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    .line 450
    .end local v4           #wepKey:Ljava/lang/String;
    :cond_27
    iget v5, p0, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 451
    iget v5, p0, Landroid/net/wifi/WifiConfiguration;->priority:I

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 452
    iget-boolean v5, p0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    if-eqz v5, :cond_64

    const/4 v5, 0x1

    :goto_36
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 454
    iget-object v5, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-static {p1, v5}, Landroid/net/wifi/WifiConfiguration;->writeBitSet(Landroid/os/Parcel;Ljava/util/BitSet;)V

    .line 455
    iget-object v5, p0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-static {p1, v5}, Landroid/net/wifi/WifiConfiguration;->writeBitSet(Landroid/os/Parcel;Ljava/util/BitSet;)V

    .line 456
    iget-object v5, p0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-static {p1, v5}, Landroid/net/wifi/WifiConfiguration;->writeBitSet(Landroid/os/Parcel;Ljava/util/BitSet;)V

    .line 457
    iget-object v5, p0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-static {p1, v5}, Landroid/net/wifi/WifiConfiguration;->writeBitSet(Landroid/os/Parcel;Ljava/util/BitSet;)V

    .line 458
    iget-object v5, p0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-static {p1, v5}, Landroid/net/wifi/WifiConfiguration;->writeBitSet(Landroid/os/Parcel;Ljava/util/BitSet;)V

    .line 460
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->enterpriseFields:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    .local v0, arr$:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;
    array-length v3, v0

    const/4 v2, 0x0

    :goto_56
    if-ge v2, v3, :cond_66

    aget-object v1, v0, v2

    .line 461
    .local v1, field:Landroid/net/wifi/WifiConfiguration$EnterpriseField;
    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 460
    add-int/lit8 v2, v2, 0x1

    goto :goto_56

    .line 452
    .end local v1           #field:Landroid/net/wifi/WifiConfiguration$EnterpriseField;
    .local v0, arr$:[Ljava/lang/String;
    :cond_64
    const/4 v5, 0x0

    goto :goto_36

    .line 463
    .local v0, arr$:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;
    :cond_66
    return-void
.end method
