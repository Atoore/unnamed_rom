.class Lcom/android/mms/ui/ComposeMessage$27;
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
    .line 2949
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessage$27;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2951
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage$27;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {}, Lcom/android/mms/ui/ComposeMessage;->access$4900()Ljava/lang/Runnable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/ui/ComposeMessage;->access$5000(Lcom/android/mms/ui/ComposeMessage;Ljava/lang/Runnable;)V

    .line 2952
    return-void
.end method
