.class Landroid/webkit/WebViewCore$1;
.super Ljava/lang/Object;
.source "WebViewCore.java"

# interfaces
.implements Landroid/webkit/WebStorage$QuotaUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/WebViewCore;->exceededDatabaseQuota(Ljava/lang/String;Ljava/lang/String;JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/WebViewCore;


# direct methods
.method constructor <init>(Landroid/webkit/WebViewCore;)V
    .registers 2
    .parameter

    .prologue
    .line 405
    iput-object p1, p0, Landroid/webkit/WebViewCore$1;->this$0:Landroid/webkit/WebViewCore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateQuota(J)V
    .registers 4
    .parameter "quota"

    .prologue
    .line 407
    iget-object v0, p0, Landroid/webkit/WebViewCore$1;->this$0:Landroid/webkit/WebViewCore;

    #calls: Landroid/webkit/WebViewCore;->nativeSetNewStorageLimit(J)V
    invoke-static {v0, p1, p2}, Landroid/webkit/WebViewCore;->access$300(Landroid/webkit/WebViewCore;J)V

    .line 408
    return-void
.end method
