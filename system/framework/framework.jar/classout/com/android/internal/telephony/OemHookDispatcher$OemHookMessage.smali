.class Lcom/android/internal/telephony/OemHookDispatcher$OemHookMessage;
.super Ljava/lang/Object;
.source "OemHookDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/OemHookDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OemHookMessage"
.end annotation


# instance fields
.field body:[B

.field final synthetic this$0:Lcom/android/internal/telephony/OemHookDispatcher;

.field what:I


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/OemHookDispatcher;[B)V
    .registers 6
    .parameter
    .parameter "obj"

    .prologue
    const/4 v2, 0x0

    .line 145
    iput-object p1, p0, Lcom/android/internal/telephony/OemHookDispatcher$OemHookMessage;->this$0:Lcom/android/internal/telephony/OemHookDispatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 147
    .local v0, p:Landroid/os/Parcel;
    array-length v1, p2

    invoke-virtual {v0, p2, v2, v1}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 148
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 149
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/OemHookDispatcher$OemHookMessage;->what:I

    .line 150
    invoke-virtual {v0}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/OemHookDispatcher$OemHookMessage;->body:[B

    .line 151
    return-void
.end method
