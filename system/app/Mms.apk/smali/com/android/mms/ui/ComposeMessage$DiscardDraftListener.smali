.class Lcom/android/mms/ui/ComposeMessage$DiscardDraftListener;
.super Ljava/lang/Object;
.source "ComposeMessage.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DiscardDraftListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessage;


# direct methods
.method private constructor <init>(Lcom/android/mms/ui/ComposeMessage;)V
    .locals 0
    .parameter

    .prologue
    .line 931
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessage$DiscardDraftListener;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mms/ui/ComposeMessage;Lcom/android/mms/ui/ComposeMessage$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 931
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessage$DiscardDraftListener;-><init>(Lcom/android/mms/ui/ComposeMessage;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 933
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage$DiscardDraftListener;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessage;->access$000(Lcom/android/mms/ui/ComposeMessage;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->discard()V

    .line 934
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 938
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage$DiscardDraftListener;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessage;->access$2100(Lcom/android/mms/ui/ComposeMessage;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 939
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage$DiscardDraftListener;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessage;->access$400(Lcom/android/mms/ui/ComposeMessage;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 944
    :goto_0
    return-void

    .line 941
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage$DiscardDraftListener;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessage;->access$2200(Lcom/android/mms/ui/ComposeMessage;)V

    goto :goto_0
.end method
