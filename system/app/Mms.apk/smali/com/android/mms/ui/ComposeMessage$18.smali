.class Lcom/android/mms/ui/ComposeMessage$18;
.super Ljava/lang/Object;
.source "ComposeMessage.java"

# interfaces
.implements Lcom/android/mms/ui/MessageListView$OnDeleteMsgAnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessage;->onCreate(Landroid/os/Bundle;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessage;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessage;)V
    .locals 0
    .parameter

    .prologue
    .line 1851
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessage$18;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBeginDeleteMsgAnimation()V
    .locals 0

    .prologue
    .line 1854
    return-void
.end method

.method public onEndDeleteMsgAnimation()V
    .locals 2

    .prologue
    .line 1863
    const-string v0, "Mms/ComposeMessage"

    const-string v1, "End Delete Animation()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1864
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage$18;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessage;->access$1600(Lcom/android/mms/ui/ComposeMessage;)V

    .line 1865
    return-void
.end method
