.class Lcom/android/mms/ui/ComposeMessage$40;
.super Ljava/lang/Object;
.source "ComposeMessage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessage;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessage;

.field final synthetic val$dialog:Landroid/app/ProgressDialog;

.field final synthetic val$extrastring:Ljava/lang/String;

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessage;Ljava/lang/String;Landroid/net/Uri;Landroid/app/ProgressDialog;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3990
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessage$40;->this$0:Lcom/android/mms/ui/ComposeMessage;

    iput-object p2, p0, Lcom/android/mms/ui/ComposeMessage$40;->val$extrastring:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/mms/ui/ComposeMessage$40;->val$uri:Landroid/net/Uri;

    iput-object p4, p0, Lcom/android/mms/ui/ComposeMessage$40;->val$dialog:Landroid/app/ProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 3992
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage$40;->val$extrastring:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage$40;->val$extrastring:Ljava/lang/String;

    const-string v3, "vcard"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3993
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage$40;->this$0:Lcom/android/mms/ui/ComposeMessage;

    const/4 v3, 0x1

    invoke-static {v0, v3}, Lcom/android/mms/ui/ComposeMessage;->access$6200(Lcom/android/mms/ui/ComposeMessage;I)I

    move-result v0

    if-lez v0, :cond_0

    .line 3994
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage$40;->this$0:Lcom/android/mms/ui/ComposeMessage;

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessage$40;->val$uri:Landroid/net/Uri;

    invoke-static {v0, v3}, Lcom/android/mms/ui/ComposeMessage;->access$6300(Lcom/android/mms/ui/ComposeMessage;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    .line 3995
    .local v1, contactUri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage$40;->this$0:Lcom/android/mms/ui/ComposeMessage;

    const/16 v5, 0x14

    move v3, v2

    move v4, v2

    invoke-static/range {v0 .. v5}, Lcom/android/mms/ui/ComposeMessage;->access$6400(Lcom/android/mms/ui/ComposeMessage;Landroid/net/Uri;ZZZI)V

    .line 3999
    .end local v1           #contactUri:Landroid/net/Uri;
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage$40;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessage;->access$000(Lcom/android/mms/ui/ComposeMessage;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage$40;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessage;->access$000(Lcom/android/mms/ui/ComposeMessage;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->hasAttachment()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4000
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage$40;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessage;->access$000(Lcom/android/mms/ui/ComposeMessage;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/mms/data/WorkingMessage;->saveAsMms(Z)Landroid/net/Uri;

    .line 4001
    sget-boolean v0, Lcom/android/mms/data/WorkingMessage;->mForceMmsState:Z

    if-eqz v0, :cond_1

    .line 4002
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage$40;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessage;->access$000(Lcom/android/mms/ui/ComposeMessage;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/mms/data/WorkingMessage;->removeFakeMmsForDraft(Z)V

    .line 4005
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage$40;->val$dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 4006
    return-void
.end method
