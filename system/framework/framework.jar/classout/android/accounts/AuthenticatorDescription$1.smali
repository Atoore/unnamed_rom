.class final Landroid/accounts/AuthenticatorDescription$1;
.super Ljava/lang/Object;
.source "AuthenticatorDescription.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/accounts/AuthenticatorDescription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/accounts/AuthenticatorDescription;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/accounts/AuthenticatorDescription;
    .registers 4
    .parameter "source"

    .prologue
    .line 141
    new-instance v0, Landroid/accounts/AuthenticatorDescription;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/accounts/AuthenticatorDescription;-><init>(Landroid/os/Parcel;Landroid/accounts/AuthenticatorDescription$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 138
    invoke-virtual {p0, p1}, Landroid/accounts/AuthenticatorDescription$1;->createFromParcel(Landroid/os/Parcel;)Landroid/accounts/AuthenticatorDescription;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/accounts/AuthenticatorDescription;
    .registers 3
    .parameter "size"

    .prologue
    .line 146
    new-array v0, p1, [Landroid/accounts/AuthenticatorDescription;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 138
    invoke-virtual {p0, p1}, Landroid/accounts/AuthenticatorDescription$1;->newArray(I)[Landroid/accounts/AuthenticatorDescription;

    move-result-object v0

    return-object v0
.end method