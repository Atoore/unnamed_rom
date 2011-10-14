.class Lcom/android/mms/ui/ComposeMessage$37;
.super Ljava/lang/Object;
.source "ComposeMessage.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessage;->showChooseContactDialog()V
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
    .line 3828
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessage$37;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 3830
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage$37;->this$0:Lcom/android/mms/ui/ComposeMessage;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage$37;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessage;->access$5900(Lcom/android/mms/ui/ComposeMessage;)Lcom/android/mms/ui/ChooseContactSelectorAdapter;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/mms/ui/ChooseContactSelectorAdapter;->buttonToCommand(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/mms/ui/ComposeMessage;->access$6000(Lcom/android/mms/ui/ComposeMessage;I)V

    .line 3832
    return-void
.end method
