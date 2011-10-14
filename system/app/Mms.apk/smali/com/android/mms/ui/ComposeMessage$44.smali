.class Lcom/android/mms/ui/ComposeMessage$44;
.super Ljava/lang/Object;
.source "ComposeMessage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessage;->handleSendIntent(Landroid/content/Intent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessage;

.field final synthetic val$dialog:Landroid/app/ProgressDialog;

.field final synthetic val$extrastring:Ljava/lang/String;

.field final synthetic val$type:Ljava/lang/String;

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessage;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/app/ProgressDialog;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 4525
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessage$44;->this$0:Lcom/android/mms/ui/ComposeMessage;

    iput-object p2, p0, Lcom/android/mms/ui/ComposeMessage$44;->val$extrastring:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/mms/ui/ComposeMessage$44;->val$uri:Landroid/net/Uri;

    iput-object p4, p0, Lcom/android/mms/ui/ComposeMessage$44;->val$type:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/mms/ui/ComposeMessage$44;->val$dialog:Landroid/app/ProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 4529
    const-wide/16 v3, 0x1e

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4534
    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage$44;->val$extrastring:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage$44;->val$extrastring:Ljava/lang/String;

    const-string v3, "vcard"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4535
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage$44;->this$0:Lcom/android/mms/ui/ComposeMessage;

    const/4 v3, 0x1

    invoke-static {v0, v3}, Lcom/android/mms/ui/ComposeMessage;->access$6200(Lcom/android/mms/ui/ComposeMessage;I)I

    move-result v0

    if-lez v0, :cond_0

    .line 4536
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage$44;->this$0:Lcom/android/mms/ui/ComposeMessage;

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessage$44;->val$uri:Landroid/net/Uri;

    invoke-static {v0, v3}, Lcom/android/mms/ui/ComposeMessage;->access$6300(Lcom/android/mms/ui/ComposeMessage;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    .line 4537
    .local v1, contactUri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage$44;->this$0:Lcom/android/mms/ui/ComposeMessage;

    const/16 v5, 0x14

    move v3, v2

    move v4, v2

    invoke-static/range {v0 .. v5}, Lcom/android/mms/ui/ComposeMessage;->access$6400(Lcom/android/mms/ui/ComposeMessage;Landroid/net/Uri;ZZZI)V

    .line 4542
    .end local v1           #contactUri:Landroid/net/Uri;
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage$44;->val$dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 4543
    return-void

    .line 4530
    :catch_0
    move-exception v6

    .line 4532
    .local v6, e:Ljava/lang/InterruptedException;
    invoke-virtual {v6}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 4539
    .end local v6           #e:Ljava/lang/InterruptedException;
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage$44;->val$type:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 4540
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage$44;->this$0:Lcom/android/mms/ui/ComposeMessage;

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessage$44;->val$type:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessage$44;->val$uri:Landroid/net/Uri;

    invoke-static {v0, v3, v4, v2, v2}, Lcom/android/mms/ui/ComposeMessage;->access$7300(Lcom/android/mms/ui/ComposeMessage;Ljava/lang/String;Landroid/net/Uri;ZZ)V

    goto :goto_1
.end method
