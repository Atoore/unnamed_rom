.class Lcom/android/mms/ui/ComposeMessage$60;
.super Ljava/lang/Object;
.source "ComposeMessage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessage;->addMedia(Ljava/lang/String;Landroid/net/Uri;ZZ)V
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
    .line 6731
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessage$60;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 6733
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage$60;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessage;->access$400(Lcom/android/mms/ui/ComposeMessage;)Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f090180

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 6734
    .local v0, unableToAttach:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage$60;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessage;->access$400(Lcom/android/mms/ui/ComposeMessage;)Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 6735
    return-void
.end method
