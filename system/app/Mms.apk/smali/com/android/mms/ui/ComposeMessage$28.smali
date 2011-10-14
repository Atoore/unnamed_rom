.class Lcom/android/mms/ui/ComposeMessage$28;
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
    .line 2955
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessage$28;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2957
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage$28;->this$0:Lcom/android/mms/ui/ComposeMessage;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/mms/ui/ComposeMessage;->access$5100(Lcom/android/mms/ui/ComposeMessage;I)V

    .line 2958
    return-void
.end method
