.class final Lcom/broadcom/bt/service/bpp/BppAttributes$1;
.super Ljava/lang/Object;
.source "BppAttributes.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/service/bpp/BppAttributes;
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
        "Lcom/broadcom/bt/service/bpp/BppAttributes;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/broadcom/bt/service/bpp/BppAttributes;
    .registers 4
    .parameter "in"

    .prologue
    .line 80
    new-instance v0, Lcom/broadcom/bt/service/bpp/BppAttributes;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/broadcom/bt/service/bpp/BppAttributes;-><init>(Landroid/os/Parcel;Lcom/broadcom/bt/service/bpp/BppAttributes$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 78
    invoke-virtual {p0, p1}, Lcom/broadcom/bt/service/bpp/BppAttributes$1;->createFromParcel(Landroid/os/Parcel;)Lcom/broadcom/bt/service/bpp/BppAttributes;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/broadcom/bt/service/bpp/BppAttributes;
    .registers 3
    .parameter "size"

    .prologue
    .line 84
    new-array v0, p1, [Lcom/broadcom/bt/service/bpp/BppAttributes;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 78
    invoke-virtual {p0, p1}, Lcom/broadcom/bt/service/bpp/BppAttributes$1;->newArray(I)[Lcom/broadcom/bt/service/bpp/BppAttributes;

    move-result-object v0

    return-object v0
.end method
