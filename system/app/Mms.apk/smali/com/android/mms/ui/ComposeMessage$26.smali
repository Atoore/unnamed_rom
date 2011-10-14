.class Lcom/android/mms/ui/ComposeMessage$26;
.super Ljava/lang/Object;
.source "ComposeMessage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessage;->startSendAnimationPrepare(I)V
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
    .line 2943
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessage$26;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2945
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage$26;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessage;->access$4800(Lcom/android/mms/ui/ComposeMessage;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2946
    return-void
.end method
