.class public Lcom/broadcom/bt/service/map/provider/PersonInfo;
.super Ljava/lang/Object;
.source "PersonInfo.java"


# instance fields
.field public mDisplayName:Ljava/lang/String;

.field public mFamilyName:Ljava/lang/String;

.field public mGivenName:Ljava/lang/String;

.field public mMiddleName:Ljava/lang/String;

.field public mPrefix:Ljava/lang/String;

.field public mSuffix:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    return-void
.end method

.method public static getDisplayName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "displayName"
    .parameter "givenName"
    .parameter "familyName"

    .prologue
    .line 31
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    move-object v1, p0

    .line 44
    :goto_7
    return-object v1

    .line 34
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    .local v0, b:Ljava/lang/StringBuilder;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 36
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    :cond_16
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2a

    .line 39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_27

    .line 40
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    :cond_27
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    :cond_2a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_35

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_7

    :cond_35
    const/4 v1, 0x0

    goto :goto_7
.end method

.method public static getName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .parameter "givenName"
    .parameter "familyName"
    .parameter "middleName"
    .parameter "prefix"
    .parameter "suffix"

    .prologue
    const-string v2, ";"

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    .local v0, b:Ljava/lang/StringBuilder;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 66
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    :cond_10
    const-string v1, ";"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1e

    .line 70
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    :cond_1e
    const-string v1, ";"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2c

    .line 74
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    :cond_2c
    const-string v1, ";"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3a

    .line 78
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    :cond_3a
    const-string v1, ";"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_48

    .line 82
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    :cond_48
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_53

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_52
    return-object v1

    :cond_53
    const/4 v1, 0x0

    goto :goto_52
.end method

.method public static toVcardField_FN(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "displayName"
    .parameter "givenName"
    .parameter "familyName"

    .prologue
    .line 103
    invoke-static {p0, p1, p2}, Lcom/broadcom/bt/service/map/provider/PersonInfo;->getDisplayName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 104
    .local v0, dName:Ljava/lang/String;
    if-nez v0, :cond_9

    const-string v1, ""

    :goto_8
    return-object v1

    :cond_9
    move-object v1, v0

    goto :goto_8
.end method

.method public static toVcardField_N(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "displayName"
    .parameter "givenName"
    .parameter "familyName"

    .prologue
    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 90
    .local v0, b:Ljava/lang/StringBuilder;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 91
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    :cond_e
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_22

    .line 94
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_1f

    .line 95
    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    :cond_1f
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    :cond_22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_2d

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_2c
    return-object v1

    :cond_2d
    const-string v1, ""

    goto :goto_2c
.end method


# virtual methods
.method public getDisplayName()Ljava/lang/String;
    .registers 4

    .prologue
    .line 53
    iget-object v0, p0, Lcom/broadcom/bt/service/map/provider/PersonInfo;->mDisplayName:Ljava/lang/String;

    iget-object v1, p0, Lcom/broadcom/bt/service/map/provider/PersonInfo;->mGivenName:Ljava/lang/String;

    iget-object v2, p0, Lcom/broadcom/bt/service/map/provider/PersonInfo;->mFamilyName:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/broadcom/bt/service/map/provider/PersonInfo;->getDisplayName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 6

    .prologue
    .line 59
    iget-object v0, p0, Lcom/broadcom/bt/service/map/provider/PersonInfo;->mGivenName:Ljava/lang/String;

    iget-object v1, p0, Lcom/broadcom/bt/service/map/provider/PersonInfo;->mFamilyName:Ljava/lang/String;

    iget-object v2, p0, Lcom/broadcom/bt/service/map/provider/PersonInfo;->mMiddleName:Ljava/lang/String;

    iget-object v3, p0, Lcom/broadcom/bt/service/map/provider/PersonInfo;->mPrefix:Ljava/lang/String;

    iget-object v4, p0, Lcom/broadcom/bt/service/map/provider/PersonInfo;->mSuffix:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/broadcom/bt/service/map/provider/PersonInfo;->getName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
