.class Landroid/net/http/RequestQueue$SyncFeeder;
.super Ljava/lang/Object;
.source "RequestQueue.java"

# interfaces
.implements Landroid/net/http/RequestFeeder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/http/RequestQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SyncFeeder"
.end annotation


# instance fields
.field private mRequest:Landroid/net/http/Request;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 407
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 408
    return-void
.end method


# virtual methods
.method public getRequest()Landroid/net/http/Request;
    .registers 3

    .prologue
    .line 410
    iget-object v0, p0, Landroid/net/http/RequestQueue$SyncFeeder;->mRequest:Landroid/net/http/Request;

    .line 411
    .local v0, r:Landroid/net/http/Request;
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/net/http/RequestQueue$SyncFeeder;->mRequest:Landroid/net/http/Request;

    .line 412
    return-object v0
.end method

.method public getRequest(Lorg/apache/http/HttpHost;)Landroid/net/http/Request;
    .registers 3
    .parameter "host"

    .prologue
    .line 415
    invoke-virtual {p0}, Landroid/net/http/RequestQueue$SyncFeeder;->getRequest()Landroid/net/http/Request;

    move-result-object v0

    return-object v0
.end method

.method public haveRequest(Lorg/apache/http/HttpHost;)Z
    .registers 3
    .parameter "host"

    .prologue
    .line 418
    iget-object v0, p0, Landroid/net/http/RequestQueue$SyncFeeder;->mRequest:Landroid/net/http/Request;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public requeueRequest(Landroid/net/http/Request;)V
    .registers 2
    .parameter "r"

    .prologue
    .line 421
    iput-object p1, p0, Landroid/net/http/RequestQueue$SyncFeeder;->mRequest:Landroid/net/http/Request;

    .line 422
    return-void
.end method
